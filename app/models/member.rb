# == Schema Information
#
# Table name: members
#
#  id              :integer          not null, primary key
#  admin           :boolean          default(FALSE)
#  age             :integer
#  bestdish        :string
#  birthday        :datetime
#  catchphrase     :string
#  email           :string
#  hometown        :string
#  introduction    :text
#  motto           :string
#  name            :string
#  password_digest :string
#  picture         :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Member < ApplicationRecord
  # mount_uploader :picture, PictureUploader
  validates :name, presence: true ,length:{maximum: 30, minimum: 3}
  validates :introduction, presence: true , length:{maximum: 500, minimum: 3}
  has_secure_password
  has_many :articles,  dependent: :destroy

  include MemberSearchService

  #誕生日をフォーマット
  def f_birthday(date)
    date_format = "%Y年%m月%d日生まれ"
    date.strftime(date_format)
  end
end
