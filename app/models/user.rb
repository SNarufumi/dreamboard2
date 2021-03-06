class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many:posts ,  dependent: :destroy
  has_many:books ,  dependent: :destroy
  has_many :favorites, dependent: :destroy
end
