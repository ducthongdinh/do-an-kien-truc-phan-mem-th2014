class CreateDataTableUsings < ActiveRecord::Migration[5.1]
  def change
    create_table :data_table_usings do |t|
      t.string :name
      t.integer :count
      t.date :using_date

      t.timestamps
    end
  end
end
