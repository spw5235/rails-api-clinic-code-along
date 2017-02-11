class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :specialty, :given_name, :family_name, :gender
end
