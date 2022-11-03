class CreateBibliotecarios < ActiveRecord::Migration[7.0]
  def change
    create_table :bibliotecarios do |t|
      t.string :nome

      t.timestamps
    end
  end
end
