class AddDivision < ActiveRecord::Migration
  def up
    add_column :profiles, :division, :integer
  end
  def down
    remove_column :profiles, :division
  end
end
