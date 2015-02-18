#  tracks when a user clicks to share via email, Facebook, or Twitter.
class Share < ActiveRecord::Base
  belongs_to :provider
  belongs_to :page
end
