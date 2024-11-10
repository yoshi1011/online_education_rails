# == Schema Information
#
# Table name: badges
#
#  id           :integer          not null, primary key
#  name         :string
#  description  :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  discarded_at :datetime
#
# Indexes
#
#  index_badges_on_name  (name) UNIQUE
#

class Badge < ApplicationRecord
  include Discard::Model
  
  has_many :course_badges, dependent: :destroy
  has_many :courses, through: :course_badges
end
