class Post < ApplicationRecord
  # belongs_to :user
  validates :header, presence: true
  validates :content, presence: true
  validates :author, presence: true
end
