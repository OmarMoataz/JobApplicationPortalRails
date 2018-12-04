class ChangeForeignKeyApplicantsInfoIdToApplicantId < ActiveRecord::Migration[5.2]
  def change
    remove_column :applicant_nationalities, :applicants_info_id
    add_reference :applicant_nationalities, :applicants, index: true
  end
end
