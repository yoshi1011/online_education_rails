# frozen_string_literal: true

class HeaderAuthButtons < ViewComponent::Base
  # NOTE: erb上に記述しているコードをそのままComponent内に置いただけのような実装だが、ベストな設計があるのであれば修正したい
  erb_template <<~ERB
    <div class="flex items-center space-x-4">
      <% if @is_signed_in %>
        <%= link_to 'ログアウト', destroy_user_session_path, data: { turbo_method: :delete }, class: "px-4 py-2 text-gray-700" %>
      <% else %>
        <%= link_to 'ログイン', new_user_session_path, class: "px-4 py-2 text-gray-700" %>
        <%= link_to '新規登録', new_user_registration_path, class: 'px-4 py-2 text-white bg-black rounded' %>
      <% end %>
    </div>
  ERB

  def initialize(is_signed_in:)
    @is_signed_in = is_signed_in
  end
end
