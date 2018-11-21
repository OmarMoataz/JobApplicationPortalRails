class RenameApplicantsPersoanlInformationToApplicantInfo < ActiveRecord::Migration[5.2]
  def change
    rename_table :applicants_personal_information, :applicants_info
  end
end
