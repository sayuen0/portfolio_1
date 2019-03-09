# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  member_id  :integer
#
# Indexes
#
#  index_articles_on_member_id  (member_id)
#

class Article < ApplicationRecord
  belongs_to :member
end
