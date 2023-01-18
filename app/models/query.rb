class Query < ApplicationRecord
  belongs_to :user
  belongs_to :article

  validates :text, presence: true
  validates :search_counter, presence: true, numericality: { only_integer: true }
end
