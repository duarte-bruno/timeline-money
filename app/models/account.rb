class Account < ApplicationRecord
  belongs_to :user
  has_many :entries

  before_save :set_default_balance

  validates :user, presence: true
  validates :name, presence: true, length: { minimum: 3 }
  validates :balance, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, if: -> { !balance.nil? }

  private

  def set_default_balance
    if balance.nil?
      self.balance = 0
    end
  end
end