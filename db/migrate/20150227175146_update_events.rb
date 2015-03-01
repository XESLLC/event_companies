class UpdateEvents < ActiveRecord::Migration
  def change
    add_column :events, :company_id, :text
  end
end
