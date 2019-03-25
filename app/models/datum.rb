class Datum < ApplicationRecord
  belongs_to :output
  belongs_to :input
end
