class Entry < ApplicationRecord
  belongs_to :entry_type

  validates :entry_type, presence: true
  validates :value, numericality: { greater_than: 0 }, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }
  validates :date, presence: true
  validates :description, presence: true, length: { minimum: 3 }
end