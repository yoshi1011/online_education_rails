# frozen_string_literal: true

require "rails_helper"

RSpec.describe HeaderAuthButtons, type: :component do
  context 'ログイン状態の場合' do
    it 'ログアウトボタンを表示する' do
      render_inline(described_class.new(is_signed_in: true))

      expect(page).to have_text "ログアウト"
      expect(page).not_to have_text "ログイン"
      expect(page).not_to have_text "新規登録"
    end
  end

  context 'ログアウト状態の場合' do
    it 'ログイン・新規登録ボタンを表示する' do
      render_inline(described_class.new(is_signed_in: false))

      expect(page).to have_text "ログイン"
      expect(page).to have_text "新規登録"
      expect(page).not_to have_text "ログアウト"
    end
  end
end
