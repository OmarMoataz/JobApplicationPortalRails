class PersonalInformationAddUserReference < ActiveRecord::Migration[5.2]
  def change
    add_reference :personal_informations, :user, index: true
  end
end
