class Visit < ActiveRecord::Base
  belongs_to :page

  #:location to store for example
  #:parameters to store any parameters of the user ex utm
  #:technology to store for example device, browser info, etc.
end
