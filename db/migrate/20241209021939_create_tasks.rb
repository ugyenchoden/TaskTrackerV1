class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :status, default: 1
      t.string :description
      
      t.timestamps
    end
  end
end
