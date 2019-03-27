class AddCategoryToVulnerabilities < ActiveRecord::Migration[5.2]
  def change
    add_reference :vulnerabilities, :category, foreign_key: true
  end
end
