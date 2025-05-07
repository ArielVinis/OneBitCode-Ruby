class AddNameKindLevelToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :kind, :integer
    add_column :users, :level, :integer
  end
end
