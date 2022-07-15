class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :game

  # validate that pairings between game and genre are unqiue
  validates :game, uniqueness: { scope: :list }
  # validates comment min length
  validates :comment, length: { minimum: 6 }
end
