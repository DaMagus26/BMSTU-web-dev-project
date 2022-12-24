class SemiFinalScore < ApplicationRecord
  # validate :jury_is_actually_jury
  # belongs_to :team
  # belongs_to :user

  # private
  # def jury_is_actually_jury
  #   unless User.find(users_id).role == 'jury'
  #     errors.add(:users_id, 'В поле users_id должен быть участник с ролью 2 (jury)')
  #   end
  # end
end
