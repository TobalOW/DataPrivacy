# == Schema Information
#
# Table name: inputs
#
#  id              :integer          not null, primary key
#  additional_data :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Input < ApplicationRecord
  belongs_to :vulnerability
  belongs_to :datum
end
