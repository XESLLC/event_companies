class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.text :name
      t.text :event_id


      t.timestamps
    end
  end
end
