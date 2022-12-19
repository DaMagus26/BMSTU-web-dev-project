class Post < ApplicationRecord
  belongs_to :user
  validates :header, presence: true
  validates :content, presence: true
  validates :author, presence: true
  validates :heaader, length: { minimum: 5, maximum: 20 }
end
