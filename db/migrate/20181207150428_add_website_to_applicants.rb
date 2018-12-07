class AddWebsiteToApplicants < ActiveRecord::Migration[5.2]
  def change
    add_column :applicants, :website, :string
  end
end
