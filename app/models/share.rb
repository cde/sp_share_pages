#  tracks when a user clicks to share via email, Facebook, or Twitter.
class Share < ActiveRecord::Base
  belongs_to :provider
  belongs_to :page


  def build_variants
    # Here we could build something that takes variants per provider example twitter
    # and build whatever is necessary when sharing pages

  end
end
