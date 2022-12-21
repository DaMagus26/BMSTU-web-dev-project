class Team < ApplicationRecord
  enum track: [:web_development, :data_science, :java_backend]
  has_many :user
end
