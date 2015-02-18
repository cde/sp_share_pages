class Page < ActiveRecord::Base

  VALID_URL_REGEX = /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}/

  validates :url, presence: true
  validates :url, format: {with: VALID_URL_REGEX, message: "Invalid",  multiline: true}

  validates :title, presence: true, length: { maximum: 256}

  belongs_to :organization

  has_many :visits
  has_many :shares


end
