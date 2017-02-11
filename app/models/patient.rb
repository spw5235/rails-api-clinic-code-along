# frozen_string_literal: true

# :nodoc:
class Patient < ApplicationRecord
  belongs_to :doctor

  validates :name, presence: true
  validates :born_on, presence: true
end
