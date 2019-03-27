# == Schema Information
#
# Table name: data
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Datum < ApplicationRecord
  belongs_to :output
  belongs_to :input
end
