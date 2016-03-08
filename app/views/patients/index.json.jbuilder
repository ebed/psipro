json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :lastname, :dob, :gender
  json.url patient_url(patient, format: :json)
end
