class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.boolean :finished
      t.string :description
      t.timestamps
    end
  end
end
