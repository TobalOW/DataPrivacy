class AddDataToInputsAndOutputs < ActiveRecord::Migration[5.2]
  def change
    add_reference :inputs, :datum, foreign_key: true
    add_reference :outputs, :datum, foreign_key: true
  end
end
