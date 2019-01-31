class Member < ApplicationRecord
  # mount_uploader :picture, PictureUploader
  validates :name, presence: true ,length:{maximum: 30, minimum: 3}
  validates :introduction, presence: true , length:{maximum: 500, minimum: 3}
end
