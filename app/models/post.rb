class Post < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to:user
	belongs_to:category
	belongs_to:status
end
