class Send < ApplicationRecord
  belongs_to :user
  belongs_to :advert
  # belongs_to :receive
end
