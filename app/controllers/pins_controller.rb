class PinsController < ApplicationController
  before_action :authenticate_user!
  def index
  	if params[:q].present?
      @pin = Pin.where('titulo like ?', "%#{params[:q]}")
    else
      @pin = Pin.all
    end
  	
  end

  def tus_pins
    @pin = current_user.pins
  end

  def show
    @pin = Pin.all
  end

  def new
  	@pin = Pin.new
  end

  def create
  	@pin = Pin.create(pin_params)
    current_user.pins << @pin
  	redirect_to pins_path
  end

  def edit
  	@pin = Pin.find(params[:id])
  end

  def update
  	@pin = Pin.find(params[:id])
  	@pin.update(pin_params)

  	redirect_to pins_path
  	
  end

  def destroy
  	@pin = Pin.find(params[:id])
  	@pin.destroy

  	redirect_to pins_path
  end

  def dar_like
    hay_like = Like.find_by(user_id: current_user.id, pin_id: params[:id])
    if hay_like.present?
      hay_like.destroy
    else
      li = Like.create()
      current_user.likes << li
      pin = Pin.find(params[:id])
      pin.likes << li
    end
    #redirect_to pins_path
    redirect_to tus_pins_pin_path
    
  end

  def pin_params
    params.require(:pin).permit(:titulo, :descripcion, :imagen)
  	
  end
end
