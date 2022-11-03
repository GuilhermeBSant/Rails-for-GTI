class CreateLivros < ActiveRecord::Migration[7.0]
  def change
    create_table :livros do |t|
      t.string :autor
      t.string :categoria
      t.integer :quantidade
      t.string :nomelivro

      t.timestamps
    end
  end
end
