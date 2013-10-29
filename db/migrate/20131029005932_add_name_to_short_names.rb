class AddNameToShortNames < ActiveRecord::Migration
  def change
    add_column :short_names, :name, :string
  end
end
