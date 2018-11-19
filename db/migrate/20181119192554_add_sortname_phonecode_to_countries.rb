class AddSortnamePhonecodeToCountries < ActiveRecord::Migration[5.2]
  def change
    add_column :countries, :sort_name, :string
    add_column :countries, :phone_code, :string
  end
end
