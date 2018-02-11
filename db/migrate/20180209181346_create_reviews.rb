class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :thoughts
      t.references :entry, foreign_key: true

      t.timestamps
    end
  end
end
