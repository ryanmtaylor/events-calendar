class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.decimal :cost
      t.text :description
      t.references :venue
      t.time :start_time
      t.time :end_time
      t.date :date
      t.boolean :is_small
      t.string :image_url
      t.string :url
      t.string :url_text
      t.boolean :is_published
      t.string :age_limit, as: :select

      t.timestamps
    end
    add_index :events, :venue_id
  end
end
