class Bookmark < ApplicationRecord
  validates :movie, uniqueness: { scope: :list,
    message: "should happen once per year" }
  validates :comment, length: { minimum: 6 }

  belongs_to :movie
  belongs_to :list
end
