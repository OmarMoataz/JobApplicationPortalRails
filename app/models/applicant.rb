class Applicant < ApplicationRecord
  #validations
  validates_format_of :application_email,:with => Devise::email_regexp
  validates_inclusion_of :number_of_dependents, in: 0..20



  belongs_to :user
  belongs_to :visa_status
  belongs_to :marital_status
  belongs_to :city

  has_many :applicants_nationalities
  has_many :nationalities, through: :applicants_nationalities, source: :country
end
