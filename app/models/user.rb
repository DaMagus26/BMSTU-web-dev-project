class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: [:user, :jury, :admin]
  after_initialize :set_default_role, if: :new_record?
  belongs_to :team, optional: true
  has_many :semi_final_score
  has_many :final_score

  # has_many :posts
  def set_default_role
    self.role ||= :user
  end
end
