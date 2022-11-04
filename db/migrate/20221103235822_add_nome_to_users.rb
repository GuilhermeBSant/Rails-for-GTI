class AddNomeToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :nome, :string
    add_index :users, :nome, unique: true
  end
end
