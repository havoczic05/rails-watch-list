# frozen_string_literal: true

# Creación de Bookmark class
class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }

  validate :unique_movie_list_pairing

  private

  def unique_movie_list_pairing
    existing_bookmark = Bookmark.find_by(movie: movie, list: list)
    return unless existing_bookmark && existing_bookmark != self

    errors.add(:base, 'This movie-list pairing is already bookmarked.')
  end
end
