class AddNoteToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :note, :string
  end
end
