class Reserva < ApplicationRecord
  belongs_to :bibliotecario
  belongs_to :livro
end
