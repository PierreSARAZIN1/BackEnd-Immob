class LinkMessagesToAdvert < ActiveRecord::Migration[7.0]
  def change
    add_reference :sends, :advert, foreign_key: true
    add_reference :receives, :advert, foreign_key: true
  end
end
