class Blog < ApplicationRecord
  validates :content,presence: true,length:{in:1..140}
  validates :title,presence: true,length:{maximum: 20}
  belongs_to :user
  mount_uploader :image, ImageUploader
end
