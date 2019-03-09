# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  answer     :string
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ApplicationRecord
  
end
