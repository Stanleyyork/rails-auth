class CreateMortalities < ActiveRecord::Migration
  def change
    create_table :mortalities do |t|
      t.string :name
      t.float :rate
      t.string :source

      t.timestamps null: false
    end
  end
end
