json.array!(@tests) do |test|
  json.extract! test, :id, :name, :type, :description
  json.url test_url(test, format: :json)
end
