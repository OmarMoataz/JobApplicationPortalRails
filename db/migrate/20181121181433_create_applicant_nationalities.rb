class CreateApplicantNationalities < ActiveRecord::Migration[5.2]
  def change
    create_table :applicant_nationalities do |t|
      t.references :applicants_info, foreign_key: {to_table: :applicants_info }, index: true
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
