class User < ApplicationRecord
  has_secure_password

  has_many :accounts, dependent: :delete_all

  attr_accessor :validate_password

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :name, presence: true, length: { minimum: 3 }
  validates :password, presence: true, length: { minimum: 6 }, if: -> { new_record? || !password.nil? || validate_password}
  validates :terms_of_service, acceptance: { accept: ['1', true] }, if: -> { new_record? }
end
