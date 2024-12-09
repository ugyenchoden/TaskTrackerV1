class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :status, default: 'open'
      t.string :description
      
      t.timestamps
    end
  end
end
