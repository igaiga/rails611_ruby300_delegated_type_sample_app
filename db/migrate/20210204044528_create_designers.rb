class CreateDesigners < ActiveRecord::Migration[6.1]
  def change
    create_table :designers do |t|
      t.string :illust_url

      t.timestamps
    end
  end
end
