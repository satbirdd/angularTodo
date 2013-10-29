class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.references :category
      t.integer :cost_money
      t.timestamps
    end
  end
end
