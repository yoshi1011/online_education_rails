class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  # パスワード確認を無効にする
  validates_confirmation_of :password, if: :password_required?

  protected

  def password_required?
    !persisted? || !password.nil?
  end
end
