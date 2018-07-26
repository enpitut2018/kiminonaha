class Profile < ApplicationRecord
<<<<<<< HEAD
  mount_uploader :image, ImagesUploader
=======
	belongs_to :user
>>>>>>> origin/master
end
