class CreatePersonalInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :personal_informations do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth
      t.integer :gender
      t.integer :number_of_dependents
      t.references :city
      t.references :visa_status
      t.references :marital_status

      t.timestamps
    end
  end
end
