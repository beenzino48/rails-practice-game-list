class Game < ApplicationRecord
  belongs_to :bookmarks
  # This validates that the title and overview have to be unique and present
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true, uniqueness: true
end
