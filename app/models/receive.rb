class Receive < ApplicationRecord
  belongs_to :user
  belongs_to :advert
  # belongs_to :send
end
