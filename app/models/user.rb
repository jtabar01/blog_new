class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  validates :first_name, presence: true
  validates :last_name, presence: true
end
