json.extract! reserva, :id, :bibliotecario_id, :nomeusuario, :livro_id, :created_at, :updated_at
json.url reserva_url(reserva, format: :json)
