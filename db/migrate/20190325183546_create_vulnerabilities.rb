class CreateVulnerabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :vulnerabilities do |t|
      t.boolean :active

      t.timestamps
    end
  end
end
