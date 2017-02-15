class Book < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to:user
	has_many :favorites, dependent: :destroy

    # いいねは一回しかできない、その投稿にいいねしてイルカどうか判定する
    def like_user(user)
     favorites.find_by(user_id: user)
  end

  def addmypage_by? user
    books.where(user_id: user.id).exists?
  end

end
