class AddUserToVulnerabilities < ActiveRecord::Migration[5.2]
  def change
    add_reference :vulnerabilities, :user, foreign_key: true
  end
end
