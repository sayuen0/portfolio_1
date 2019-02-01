class Member < ApplicationRecord
  # mount_uploader :picture, PictureUploader
  validates :name, presence: true ,length:{maximum: 30, minimum: 3}
  validates :introduction, presence: true , length:{maximum: 500, minimum: 3}
  has_secure_password
  has_many :articles,  dependent: :destroy

  #誕生日をフォーマット
  def f_birthday(date)
    date_format = "%Y年%m月%d日生まれ"
    date.strftime(date_format)
  end
end
