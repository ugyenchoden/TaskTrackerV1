class AddJtiToUsers < ActiveRecord::Migration[8.0]
  disable_ddl_transaction!

  def change
    add_column :users, :jti, :string, null: false
    add_index :users, :jti, unique: true, algorithm: :concurrently
  end
end
