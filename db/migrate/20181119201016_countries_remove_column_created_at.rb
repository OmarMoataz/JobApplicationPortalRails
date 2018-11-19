class CountriesRemoveColumnCreatedAt < ActiveRecord::Migration[5.2]
  def change
    remove_column :countries, :created_at
  end
end
