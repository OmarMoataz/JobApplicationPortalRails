class Applicant < ApplicationRecord

  belongs_to :user
  belongs_to :visa_status
  belongs_to :marital_status
  belongs_to :city

  has_many :applicants_nationalities
  has_many :nationalities, through: :applicants_nationalities, source: :country
end
