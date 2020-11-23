class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :item, null:false
      t.text :review, null:false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
