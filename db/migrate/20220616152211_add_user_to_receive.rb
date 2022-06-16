class AddUserToReceive < ActiveRecord::Migration[7.0]
  def change
    add_reference :receives, :user, foreign_key: true
  end
end
