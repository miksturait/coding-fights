json.array!(@codes) do |code|
  json.extract! code, :id, :user, :source
  json.url code_url(code, format: :json)
end
