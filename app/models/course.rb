# == Schema Information
#
# Table name: courses
#
#  id             :integer          not null, primary key
#  description    :string
#  price_cents    :integer          default(0), not null
#  price_currency :string           default("JPY"), not null
#  title          :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  category_id    :integer          not null
#  user_id        :integer          not null
#
# Indexes
#
#  index_courses_on_category_id  (category_id)
#  index_courses_on_user_id      (user_id)
#
# Foreign Keys
#
#  category_id  (category_id => categories.id)
#  user_id      (user_id => users.id)
#
class Course < ApplicationRecord
  belongs_to :user
  belongs_to :category

  # money-railsを採用している
  monetize :price_cents
end
