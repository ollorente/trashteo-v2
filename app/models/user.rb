class User < ApplicationRecord
  has_secure_password
  belongs_to :type_user
  belongs_to :town
end
