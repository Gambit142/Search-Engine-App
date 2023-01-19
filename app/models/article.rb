class Article < ApplicationRecord
  validates :name, presence: true
  validates :url, presence: true, uniqueness: true

  scope :sorted, -> (column, direction) { order(Arel.sql("#{column} #{direction}")) }
  scope :search_by_name, -> (name) { where('name ILIKE ?', "%#{name}%") }
end
