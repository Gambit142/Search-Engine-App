class Article < ApplicationRecord
  has_many :queries
  has_many :users, through: :queries

  validates :name, presence: true
  validates :url, presence: true, uniqueness: true
end
