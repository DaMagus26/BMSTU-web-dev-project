class Team < ApplicationRecord
  enum track: [:web_development, :data_science, :java_backend]
  validates :name, presence: true
  validates :track, presence: true
  validates_uniqueness_of :name, :leader
  has_many :user
  has_many :semi_final_score, dependent: :destroy
  has_many :final_score, dependent: :destroy
end
