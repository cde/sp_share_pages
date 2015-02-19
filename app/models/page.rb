class Page < ActiveRecord::Base
  attr_accessor :bg_color, :button_color


  serialize :share_button


  VALID_URL_REGEX = /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}/

  validates :url, presence: true
  validates :url, format: {with: VALID_URL_REGEX, message: "Invalid",  multiline: true}

  validates :title, presence: true, length: { maximum: 256}

  belongs_to :organization

  has_many :visits
  has_many :shares

  has_one :page_wrapper


  #2. You have an array of Page objects (pages) with the specification above.
  # Using a single line of code, get the average number of visits to these pages.
  def avg_visits
    # total visits per page / total pages
    #self.visits / total_pages

  end


  #3. In addition to the ones specified above, we decide to add attributes
  #for share page button color (button_color) and background color (bg_color).
  # Defaults for these attributes can be set in the Organization object,
  # but they can be overridden for a given Page object. Update the Page model
  # code to include these new attributes and add functionality to retrieve the correct values for button and background color.

  # to this I would use serializer or something similar if we don't need to track
  def bg_color
    # Add logic to either get the default color from its organization or update share_button attr.
    self.share_button[:bg_color]

  end

  def button_color
    # Add logic to either get the default color from its organization or update share_button attr.

  end


end
