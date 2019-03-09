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

require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
