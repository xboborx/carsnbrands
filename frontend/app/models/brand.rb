require 'active_resource'

class Brand < ActiveResource::Base
  self.site = "http://localhost:3002"
  #self.user = "brands"
  #self.password = "brands"
  has_many :cars
end