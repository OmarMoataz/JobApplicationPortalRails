class ApplicantsNationality < ApplicationRecord
  belongs_to :applicant
  belongs_to :country
end
