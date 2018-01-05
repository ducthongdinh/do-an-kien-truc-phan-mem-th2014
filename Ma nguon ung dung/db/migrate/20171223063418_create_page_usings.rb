class CreatePageUsings < ActiveRecord::Migration[5.1]
  def change
    create_table :page_usings do |t|
      t.string :url
      t.string :name
      t.integer :count
      t.date :using_date

      t.timestamps
    end
  end
end
