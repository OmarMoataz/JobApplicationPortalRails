class ApplicantNationality < ApplicationRecord
  belongs_to :applicants_info
  belongs_to :country
end
