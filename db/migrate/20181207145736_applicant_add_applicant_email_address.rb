class ApplicantAddApplicantEmailAddress < ActiveRecord::Migration[5.2]
  def change
    add_column :applicants, :application_email, :string
  end
end
