class ApplicantsInfoRenameToApplicant < ActiveRecord::Migration[5.2]
  def change
    rename_table :applicants_info, :applicants
  end
end
