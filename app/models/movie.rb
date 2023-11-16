class Movie < ApplicationRecord
  validates :title, :overview, presence: true, uniqueness: true
  validates :overview, length: { minimum: 6 }

  has_many :bookmarks
end
