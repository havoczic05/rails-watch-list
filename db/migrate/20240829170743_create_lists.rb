# frozen_string_literal: true

# Migración para crear List table
class CreateLists < ActiveRecord::Migration[7.1]
  def change
    create_table :lists do |t|
      t.string :name

      t.timestamps
    end
  end
end
