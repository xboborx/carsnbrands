require 'active_resource'

class Car < ActiveResource::Base
  self.site = "http://localhost:3001"
  #self.user = "cars"
  #self.password = "cars"
  belongs_to :brand


end