class CreateReviewsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.integer :restaurant_id
      t.integer :customer_id
      t.timestamps
    end
  end 
end 