class Post < ApplicationRecord
	validates :user_id, presence: true
	belongs_to:user
	has_one:category, dependent: :destroy
	mount_uploader :image, ImageUploader
end
