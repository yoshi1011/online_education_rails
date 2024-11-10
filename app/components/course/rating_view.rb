# frozen_string_literal: true

class Course::RatingView < ViewComponent::Base
  erb_template <<~ERB
    <span class="text-amber-500"><%= @rating %></span>
    <span class="text-sm text-gray-600">(<%= @rating_count %>)</span>
  ERB

  MAX_RATING_POINT = 5

  def initialize(average_rating:, rating_count:)
    @rating = render_rating_point(average_rating)
    @rating_count = number_with_delimiter(rating_count)
  end

  private

  def render_rating_point(average_rating)
    rating_point = average_rating.floor
    filled_rating = "\u2605" * rating_point
    outlined_rating = "\u2606" * (MAX_RATING_POINT - rating_point)
    "#{average_rating} #{filled_rating}#{outlined_rating}"
  end
end
