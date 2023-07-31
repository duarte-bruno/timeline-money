class Account < ApplicationRecord
  belongs_to :user
  has_many :entries
  has_many :balances

  before_save :set_default_balance

  validates :user, presence: true
  validates :name, presence: true, length: { minimum: 3 }
  validates :current_balance, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, if: -> { !current_balance.nil? }

  private

  def set_default_balance
    if current_balance.nil?
      self.current_balance = 0
    end
  end
end