# == Schema Information
#
# Table name: outputs
#
#  id              :integer          not null, primary key
#  additional_data :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Output < ApplicationRecord
  belongs_to :vulnerability
  has_many :datums
end
