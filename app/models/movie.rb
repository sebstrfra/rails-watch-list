class Movie < ApplicationRecord
  has_many :bookmarks # dependent: :restrict_with_error
  # has_many :lists, through: :bookmarks   WHY NOT??
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

end
