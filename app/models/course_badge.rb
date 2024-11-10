# == Schema Information
#
# Table name: course_badges
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  badge_id   :integer          not null
#  course_id  :integer          not null
#
# Indexes
#
#  index_course_badges_on_badge_id                (badge_id)
#  index_course_badges_on_course_id               (course_id)
#  index_course_badges_on_course_id_and_badge_id  (course_id,badge_id) UNIQUE
#
# Foreign Keys
#
#  badge_id   (badge_id => badges.id)
#  course_id  (course_id => courses.id)
#

class CourseBadge < ApplicationRecord
  belongs_to :course
  belongs_to :badge
end
