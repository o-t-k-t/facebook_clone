class Feed < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :title, presence: true, length: { maximum: 30 }

  belongs_to :user
end
