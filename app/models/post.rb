require 'uri'

class Post < ActiveRecord::Base
  # TODO: automatic link formatting ("www.test.com" to "http://test.com")

  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { minimum: 3, maximum: 140 }
  validates :link, presence: true, format: { with: URI::regexp }
  validates :user_id, presence: true
end
