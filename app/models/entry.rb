class Entry < ApplicationRecord
  belongs_to :entry_type
  belongs_to :account

  after_create :update_balance

  validates :entry_type, presence: true
  validates :account, presence: true
  validates :value, numericality: { greater_than: 0 }, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }
  validates :date, presence: true
  validates :description, presence: true, length: { minimum: 3 }

  private

  def update_balance
    if self.entry_type_id == 1 #income
      self.account.update!(balance: self.account.balance + self.value)
    elsif self.entry_type_id == 2 #expense
      self.account.update!(balance: self.account.balance - self.value)
    end
  end
end