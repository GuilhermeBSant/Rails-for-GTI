json.extract! reserva, :id, :nomeusuario, :user_id, :livro_id, :created_at, :updated_at
json.url reserva_url(reserva, format: :json)
