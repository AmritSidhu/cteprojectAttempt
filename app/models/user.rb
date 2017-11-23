class User < ApplicationRecord

  has_many :uploads

  has_secure_password
  validates :email, :password, :password_confirmation, :presence => true

end
