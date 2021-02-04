class CreateProgrammers < ActiveRecord::Migration[6.1]
  def change
    create_table :programmers do |t|
      t.string :favorite_language

      t.timestamps
    end
  end
end
