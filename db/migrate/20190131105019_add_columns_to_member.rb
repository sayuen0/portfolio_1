class AddColumnsToMember < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :hometown, :string
    add_column :members, :age, :integer
    add_column :members, :birthday, :datetime
    add_column :members, :catchphrase, :string
    add_column :members, :motto, :string
  end
end
