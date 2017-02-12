class Post < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to:user
	has_one:category, dependent: :destroy
	has_one:status, dependent: :destroy
end
