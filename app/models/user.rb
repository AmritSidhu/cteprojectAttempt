class User < ApplicationRecord

  has_many :products

  has_secure_password
  validates :email, :password, :password_confirmation, :presence => true

end
