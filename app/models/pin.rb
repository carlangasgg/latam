class Pin < ApplicationRecord
  belongs_to :user
  has_many :likes

  has_one_attached :imagen
  def imagen_aleatoria
  	"http://lorempixel.com/200/" + rand(200..350).to_s
  end
end
