class AddDateToCost < ActiveRecord::Migration
  def change
    add_column :costs, :date, :date
  end
end
