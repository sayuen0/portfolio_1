class AddPictureToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :picture, :string
  end
end
