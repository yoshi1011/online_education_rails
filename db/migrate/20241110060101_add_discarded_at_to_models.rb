class AddDiscardedAtToModels < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :discarded_at, :datetime
    add_column :courses, :discarded_at, :datetime
    add_column :categories, :discarded_at, :datetime
    add_column :badges, :discarded_at, :datetime
    add_column :ratings, :discarded_at, :datetime
  end
end
