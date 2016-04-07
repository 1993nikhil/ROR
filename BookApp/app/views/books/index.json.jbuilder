json.array!(@books) do |book|
  json.extract! book, :id, :book
  json.url book_url(book, format: :json)
end
