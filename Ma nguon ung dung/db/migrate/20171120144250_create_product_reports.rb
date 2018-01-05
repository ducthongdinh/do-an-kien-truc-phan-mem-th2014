class CreateProductReports < ActiveRecord::Migration[5.1]
  def change
    create_table :product_reports do |t|
      t.text :report_content
      t.boolean :is_valid
      t.boolean :is_newest
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :product, index: true, foreign_key: true
      t.timestamps
    end
  end
end
