class User < ApplicationRecord
  has_many :profiles, dependent: :destroy
end
