json.array!(@meassures) do |meassure|
  json.extract! meassure, :id, :day, :metric_id, :value, :test_id, :patient_id, :specialist_id
  json.url meassure_url(meassure, format: :json)
end
