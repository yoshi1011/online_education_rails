class AddRatingsToCourses < ActiveRecord::Migration[8.0]
  def change
    add_column :courses, :average_rating, :decimal, precision: 2, scale: 1
    add_column :courses, :rating_count, :integer, default: 0
  end
end
