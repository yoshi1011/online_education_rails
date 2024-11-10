# == Schema Information
#
# Table name: ratings
#
#  id           :integer          not null, primary key
#  comment      :text
#  discarded_at :datetime
#  rating       :decimal(2, 1)    not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  course_id    :bigint           not null
#  user_id      :bigint           not null
#
# Indexes
#
#  index_ratings_on_course_id              (course_id)
#  index_ratings_on_user_id                (user_id)
#  index_ratings_on_user_id_and_course_id  (user_id,course_id) UNIQUE
#
# Foreign Keys
#
#  course_id  (course_id => courses.id)
#  user_id    (user_id => users.id)
#

class Rating < ApplicationRecord
  include Discard::Model

  belongs_to :user
  belongs_to :course
end
