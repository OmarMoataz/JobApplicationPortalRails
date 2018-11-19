class CountriesRemoveColumnUpdatedAt < ActiveRecord::Migration[5.2]
  def change
    remove_column :countries, :updated_at
  end
end
