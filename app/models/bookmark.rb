class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  has_many_attached :photos

  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list }, presence: true
  validates :list, presence: true
end
