class ApplicantsNationality < ApplicationRecord
  belongs_to :applicant
  belongs_to :nationality, foreign_key: 'country_id'
end
