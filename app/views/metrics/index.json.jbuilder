json.array!(@metrics) do |metric|
  json.extract! metric, :id, :name, :type
  json.url metric_url(metric, format: :json)
end
