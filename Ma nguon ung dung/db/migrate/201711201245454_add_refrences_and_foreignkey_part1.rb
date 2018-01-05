class AddRefrencesAndForeignkeyPart1 < ActiveRecord::Migration[5.1]
  def change
    add_reference :service_registers, :users, foreign_key: true
    add_reference :service_registers, :services, foreign_key: true

    add_reference :scores, :users, foreign_key: true
    add_reference :watch_lists, :users, foreign_key: true
    add_reference :keywords, :user, foreign_key: true
    
    add_reference :bills, :products, foreign_key: true    
    add_reference :auction_reports, :auctions, foreign_key: true
    #add_reference :keywords, :users, foreign_key: true
    
    add_foreign_key :bills, :users, column: :seller_id, primary_key: "id"
    add_foreign_key :bills, :users, column: :buyer_id, primary_key: "id"
  end
end
