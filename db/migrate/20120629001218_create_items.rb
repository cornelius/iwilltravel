class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :text
      t.boolean :done
      t.boolean :suggested
      t.integer :category
      t.integer :trip_id

      t.timestamps
    end
  end
end
