class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  validates :name, presence: true, format: { with: /\A\S*\Z/ }, uniqueness: true
end
