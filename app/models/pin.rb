class Pin < ApplicationRecord
  def imagen
  	"http://lorempixel.com/200/" + rand(200..500).to_s
  end
end
