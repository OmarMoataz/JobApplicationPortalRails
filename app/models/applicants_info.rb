class ApplicantsInfo < ApplicationRecord
  self.table_name = "applicants_info"

  belongs_to :user
  belongs_to :visa_status
  belongs_to :marital_status
  belongs_to :city

  has_many :applicants_nationalities
  has_many :nationalities, through: :applicants_nationalities, foreign_key: 'country_id'
end
