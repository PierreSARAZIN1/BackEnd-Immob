class Advert < ApplicationRecord
  belongs_to :user
  has_many :sends
  has_many :receives

  # def as_json(**options)
  #   unless options.has_key? :include
  #     options.merge!(include: [:user])
  #   end
  #   super(options)
  # end
end
