# == Schema Information
#
# Table name: categories
#
#  id           :integer          not null, primary key
#  discarded_at :datetime
#  name         :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_categories_on_name  (name) UNIQUE
#

class Category < ApplicationRecord
  include Discard::Model

  has_many :courses
end
