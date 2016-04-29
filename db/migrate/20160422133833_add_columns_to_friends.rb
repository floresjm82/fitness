class AddColumnsToFriends < ActiveRecord::Migration
  def change
    add_reference :friends, :user, index: true, foreign_key: true
    add_reference :friends, :friend, index: true, foreign_key: true
  end
end
