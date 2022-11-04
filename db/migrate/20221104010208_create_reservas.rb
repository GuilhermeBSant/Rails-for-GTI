class CreateReservas < ActiveRecord::Migration[7.0]
  def change
    create_table :reservas do |t|
      t.string :nomeusuario
      t.references :user, null: false, foreign_key: true
      t.references :livro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
