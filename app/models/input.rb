class Input < ApplicationRecord
  belongs_to :vulnerability
  has_many :datums
end
