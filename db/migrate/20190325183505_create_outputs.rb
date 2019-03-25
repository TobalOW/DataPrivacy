class CreateOutputs < ActiveRecord::Migration[5.2]
  def change
    create_table :outputs do |t|
      t.string :additional_data

      t.timestamps
    end
  end
end
