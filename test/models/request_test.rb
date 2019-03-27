# == Schema Information
#
# Table name: requests
#
#  id               :integer          not null, primary key
#  url              :string
#  verb_http        :string
#  headers          :string
#  host             :string
#  uri              :string
#  response_body    :string
#  response_headers :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class RequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
