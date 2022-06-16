# app/models/user.rb

class User < ApplicationRecord
	# Il faut ajouter les deux modules commençant par jwt
	devise :database_authenticatable, :registerable,
	:jwt_authenticatable,
	jwt_revocation_strategy: JwtDenylist
  has_many :adverts 
	has_many :sends
	has_many :receives

end