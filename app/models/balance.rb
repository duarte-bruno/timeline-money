class Balance < ApplicationRecord
  belongs_to :account

  validates :account, presence: true
  validates :balance, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }
  validates :date, presence: true
end
