class CreateKeywords < ActiveRecord::Migration[5.1]
  def change
    create_table :keywords do |t|
      t.string :keyword,  null: false, default: ""
      t.integer :count,  null: false, default: 0
      
      t.timestamps
    end
  end
end
