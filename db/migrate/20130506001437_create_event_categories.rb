class CreateEventCategories < ActiveRecord::Migration
  def change
    create_table :event_categories do |t|
      t.string :name, :nil => false
      t.references :event

      t.timestamps
    end
    add_index :event_categories, :event_id
  end
end
