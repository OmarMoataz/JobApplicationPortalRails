class Country < ApplicationRecord
  has_many :cities

  has_many :applicants_nationalities
  has_many :applicants, through: :applicants_nationalities
end
