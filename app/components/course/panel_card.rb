# frozen_string_literal: true

class Course::PanelCard < ViewComponent::Base
  erb_template <<~ERB
    <div class="border rounded overflow-hidden">
      <%= image_tag 'no-image.jpg', class: 'w-full', alt: 'no-image' %>
      <div class="p-4">
        <h3 class="font-bold mb-2"><%= @course.title %></h3>
        <p class="text-sm text-gray-600"><%= @instructor_name %></p>
        <div class="flex items-center mb-2">
          <%= render(Course::RatingView.new(average_rating: @average_rating, rating_count: @rating_count)) %>
        </div>
        <p class="font-bold"><%= @course.price.format %></p>

        <% if @badge %>
          <span class="bg-yellow-100 text-yellow-800 text-xs px-2 py-1"><%= @badge.name %></span>
        <% end %>
      </div>
    </div>
  ERB

  def initialize(course:)
    @course = course
    @instructor_name = course.user.full_name
    @badge = course.badges.first
    @average_rating = course.average_rating
    @rating_count = course.rating_count
  end
end
