class ChangeColumns < ActiveRecord::Migration
  def change
    change_column_default(:users, :weight, 0)
    change_column_default(:users, :height, 0)
  end
end
