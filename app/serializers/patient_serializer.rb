# frozen_string_literal: true

class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :diagnosis, :born_on
end
