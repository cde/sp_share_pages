#Assuming that organization is the client / user
class Organization < ActiveRecord::Base
  has_many :pages
end
