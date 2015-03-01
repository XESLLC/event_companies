class UpdateCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :event_id, :text
  end
end
