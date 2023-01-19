class Query < ApplicationRecord
  belongs_to :user

  validates :text, presence: true
  validates :search_counter, presence: true, numericality: { only_integer: true }

  scope :most_searched, -> { order(Arel.sql('search_counter DESC')) }
end
