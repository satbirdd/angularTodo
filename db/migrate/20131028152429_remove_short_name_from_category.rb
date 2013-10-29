class RemoveShortNameFromCategory < ActiveRecord::Migration
  def up
  	remove_column :categories, :short_name
  end

  def down
  end
end
