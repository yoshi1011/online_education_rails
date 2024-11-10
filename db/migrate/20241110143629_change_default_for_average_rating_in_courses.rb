class ChangeDefaultForAverageRatingInCourses < ActiveRecord::Migration[8.0]
  def change
    change_column_default :courses, :average_rating, 0.0
  end
end
