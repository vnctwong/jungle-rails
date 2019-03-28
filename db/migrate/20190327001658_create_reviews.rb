class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :product_id
      # t.references :product, index: true, foreign_key: true
      t.string :description
      t.string :rating
      t.timestamps null: false
    end
  end
end


