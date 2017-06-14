class User < ApplicationRecord
  has_many :experiences
  has_secure_password
end
