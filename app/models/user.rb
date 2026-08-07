class User < ApplicationRecord
  has_secure_password
  has_many :applications, dependent: :destroy
  validates :email_address, presence:true, uniqueness:true
end
