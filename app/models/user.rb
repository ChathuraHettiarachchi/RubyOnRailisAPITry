# frozen_string_literal: true

# User model
class User < ApplicationRecord
  has_secure_password
  has_many :articles, dependent: :destroy

  validates :first_name, :password, :password_confirmation, :email, :phone, :address, presence: true

  def name
    "#{first_name} #{last_name}"
  end
end
