class AddUserToSend < ActiveRecord::Migration[7.0]
  def change
    add_reference :sends, :user, foreign_key: true
  end
end
