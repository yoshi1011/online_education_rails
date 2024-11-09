class CreateRatings < ActiveRecord::Migration[8.0]
  def change
    create_table :ratings do |t|
      t.references :user, null: false, foreign_key: true, type: :bigint
      t.references :course, null: false, foreign_key: true, type: :bigint
      t.decimal :rating, null: false, precision: 2, scale: 1
      t.text :comment

      t.timestamps
    end

    add_index :ratings, [:user_id, :course_id], unique: true
  end
end
