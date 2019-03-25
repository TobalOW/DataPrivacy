class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :url
      t.string :verb_http
      t.string :headers
      t.string :host
      t.string :uri
      t.string :response_body
      t.string :response_headers

      t.timestamps
    end
  end
end
