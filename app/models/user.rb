class User < ApplicationRecord

  has_secure_password

  has_many :user
  validates :name, presence :true, length { maximum:30 }
  validates :email, presence :true, length { maximum: 255 }
end
