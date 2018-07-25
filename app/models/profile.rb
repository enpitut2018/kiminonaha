class Profile < ApplicationRecord
  mount_uploader :image, ImagesUploader
end
