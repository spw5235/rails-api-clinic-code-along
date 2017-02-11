# frozen_string_literal: true

class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :specialty
      t.string :given_name, null: false
      t.string :family_name, null: false
      t.string :gender

      t.timestamps
    end
  end
end
