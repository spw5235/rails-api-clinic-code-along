# frozen_string_literal: true
class Doctor < ApplicationRecord
  # has_many :patients
  validates :given_name, presence: true
  validates :family_name, presence: true
end
