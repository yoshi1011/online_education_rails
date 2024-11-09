# == Schema Information
#
# Table name: badges
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_badges_on_name  (name) UNIQUE
#

class Badge < ApplicationRecord
  has_many :course_badges
  has_many :courses, through: :course_badges
end
