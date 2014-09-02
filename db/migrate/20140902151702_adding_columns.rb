class AddingColumns < ActiveRecord::Migration
  def up
    add_column :profiles, :first_name, :string
    add_column :profiles, :last_name, :string
    add_column :profiles, :hobbies, :string
  end
  def down
    remove_column :profiles, :first_name
    remove_column :profiles, :last_name
    remove column :profiles, :hobbies
  end
end
