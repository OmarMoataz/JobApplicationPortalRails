class RenamePersonalInformationToApplicantsPersonalInformation < ActiveRecord::Migration[5.2]
  def change
    rename_table :personal_informations, :applicants_personal_information
  end
end
