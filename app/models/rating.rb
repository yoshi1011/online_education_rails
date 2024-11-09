# == Schema Information
#
# Table name: ratings
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  course_id  :integer          not null
#  rating     :decimal(2, 1)    not null
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_ratings_on_course_id              (course_id)
#  index_ratings_on_user_id                (user_id)
#  index_ratings_on_user_id_and_course_id  (user_id,course_id) UNIQUE
#

class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :course
end
