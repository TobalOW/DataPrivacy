class CreateInputs < ActiveRecord::Migration[5.2]
  def change
    create_table :inputs do |t|
      t.string :additional_data

      t.timestamps
    end
  end
end
