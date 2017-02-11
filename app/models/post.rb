class Post < ApplicationRecord
	validates :user_id, presence: true
	belongs_to:user
<<<<<<< HEAD
    mount_uploader :image, ImageUploader
=======
	mount_uploader :image, ImageUploader
>>>>>>> exibit
end
