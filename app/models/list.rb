class List < ApplicationRecord
  belongs_to :bookmark, optional: true
  # validates that the list name is unique and present
  validates :name, presence: true, uniqueness: true
end
