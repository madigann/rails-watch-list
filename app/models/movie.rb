class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, :overview, length: { minimum: 1 }
  validates :title, :overview, uniqueness: true

end
