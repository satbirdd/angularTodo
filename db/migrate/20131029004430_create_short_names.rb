class CreateShortNames < ActiveRecord::Migration
  def change
    create_table :short_names do |t|
      t.references :category
      t.timestamps
    end
  end
end
