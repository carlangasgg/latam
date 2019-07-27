class Pin < ApplicationRecord
  def imagen
  	"http://lorempixel.com/200/" + rand(200..350).to_s
  end
end
