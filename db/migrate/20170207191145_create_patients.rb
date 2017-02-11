# frozen_string_literal: true

class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :name, null: false
      t.string :diagnosis
      t.date :born_on, null: false

      t.timestamps null: false
    end
  end
end
