# email, Facebook, or Twitter post
class Provider < ActiveRecord::Base
  has_many :shares

end
