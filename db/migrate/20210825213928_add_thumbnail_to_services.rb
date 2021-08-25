class AddThumbnailToServices < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :thumbnail, :string
  end
end
