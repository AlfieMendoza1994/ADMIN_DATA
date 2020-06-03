class User < ApplicationRecord
  devise :database_authenticatable,
    :rememberable, :validatable

  def display_name
    employee_number
  end

  private

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
