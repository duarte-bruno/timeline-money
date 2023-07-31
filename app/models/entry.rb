class Entry < ApplicationRecord
  belongs_to :entry_type
  belongs_to :account
  has_many :entries
  belongs_to :entry

  before_create :create_value

  validates :entry_type, presence: true
  validates :account, presence: true
  validates :value, numericality: { greater_than: 0 }, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, if: -> { !value.nil? }
  validates :estimated_value, numericality: { greater_than: 0 }, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :recurrence_time, :inclusion => { :in => %w(Y M W F) }
  validates :description, presence: true, length: { minimum: 3 }

  private

  def create_value
    if value.nil?
      value = estimated_value
    end
  end
end