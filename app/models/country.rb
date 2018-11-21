class Country < ApplicationRecord
  has_many :cities

  has_many :applicants_nationalities
  has_many :applicants_info, through: :applicants_nationalities
end
