class Team < ApplicationRecord
  enum track: [:web_development, :data_science, :java_backend]
  validates_uniqueness_of :name, :leader
  has_many :user
end
