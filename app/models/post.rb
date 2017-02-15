class Post < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to:user
	belongs_to:category
	belongs_to:status

	validates :image, presence: {message: "画像を入力してください"}
	validates :name, presence: {message: "商品名を入力してください"}
	validates :description, presence: {message: "説明を入力してください"}
	validates :category_id, presence: {message: "カテゴリーを選択してください"}
	validates :status_id, presence: {message: "商品の状態を選択してください"}
	validates :price, presence: {message: "値段を入力してください"}
end
