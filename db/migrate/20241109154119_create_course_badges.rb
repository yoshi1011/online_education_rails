class CreateCourseBadges < ActiveRecord::Migration[8.0]
  def change
    create_table :course_badges do |t|
      t.references :course, null: false, foreign_key: true
      t.references :badge, null: false, foreign_key: true

      t.timestamps
    end

    add_index :course_badges, [:course_id, :badge_id], unique: true
  end
end
