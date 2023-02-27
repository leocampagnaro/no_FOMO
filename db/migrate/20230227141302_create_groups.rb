class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :event_type
      t.decimal :hourly_rate
      t.integer :size
      t.string :location
      t.text :description
      t.boolean :availability, default: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
