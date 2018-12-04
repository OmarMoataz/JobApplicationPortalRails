class RenameTableApplicantNationalitiesToApplicantsNationalities < ActiveRecord::Migration[5.2]
  def change
    rename_table :applicant_nationalities, :applicants_nationalities
  end
end
