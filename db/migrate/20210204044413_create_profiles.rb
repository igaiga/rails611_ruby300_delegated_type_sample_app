class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.string :profileable_type
      t.integer :profileable_id

      t.timestamps
    end
  end
end
