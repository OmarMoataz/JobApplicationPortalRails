class Country < ApplicationRecord
  has_many :cities

  has_many :applicants_nationalities, foreign_key: 'country_id'
  has_many :applicants, through: :applicants_nationalities
end
