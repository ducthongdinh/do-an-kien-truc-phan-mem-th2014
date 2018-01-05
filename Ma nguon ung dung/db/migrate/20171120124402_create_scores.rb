class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.string :reason_change,  null: false, default: ""
      t.integer :total_score,  null: false, default: 0
      t.boolean :status,  null: false, default: false
      t.boolean :is_newest,  null: false, default: false
      t.timestamps
    end
  end
end
