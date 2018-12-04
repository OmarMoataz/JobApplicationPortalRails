class ChangeForeignKeyApplicantsIdToApplicantId < ActiveRecord::Migration[5.2]
  def change
    remove_column :applicant_nationalities, :applicants_id
    add_reference :applicant_nationalities, :applicant, index: true
  end
end
