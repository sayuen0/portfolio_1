class AddColumnsToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :name, :string
    add_column :members, :introduction, :text
  end
end
