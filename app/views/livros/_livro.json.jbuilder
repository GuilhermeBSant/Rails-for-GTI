json.extract! livro, :id, :autor, :categoria, :quantidade, :nomelivro, :created_at, :updated_at
json.url livro_url(livro, format: :json)
