# frozen_string_literal: true

# Creación de Movie class
class Movie < ApplicationRecord
  before_destroy :check_for_bookmarks
  has_many :bookmarks
  has_many :list, through: :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  private

  def check_for_bookmarks
    return unless bookmarks.empty?

    errors.add(:base, 'Cannot delete movie with associated bookmarks')
    throw(:abort)
  end
end
