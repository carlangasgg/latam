class PinsController < ApplicationController
  def index
  	@pin = Pin.all
  	
  end

  def show
    @pin = Pin.all
  end

  def new
  	@pin = Pin.new
  end

  def create
  	@pin = Pin.create(pin_params)
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

  def pin_params
    params.require(:pin).permit(:titulo, :descripcion)
  	
  end
end
