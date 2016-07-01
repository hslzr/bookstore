class AddPicturableFieldsToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :picturable_id, :integer
    add_column :pictures, :picturable_type, :string
  end
end
