# frozen_string_literal: true

class AddDoctorIdToPatients < ActiveRecord::Migration[5.0]
  def change
    add_reference :patients, :doctor, index: true, foreign_key: true
  end
end
