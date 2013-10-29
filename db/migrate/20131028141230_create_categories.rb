class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :short_name
      t.string :pinyin
      t.timestamps
    end
  end
end
