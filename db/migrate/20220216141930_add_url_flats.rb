class AddUrlFlats < ActiveRecord::Migration[6.1]
  def change
    add_column :flats, :url_img, :string
  end
end
