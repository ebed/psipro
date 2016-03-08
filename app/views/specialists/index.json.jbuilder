json.array!(@specialists) do |specialist|
  json.extract! specialist, :id, :name, :lastname, :dob, :gender, :speciality_id, :address, :city, :state, :country
  json.url specialist_url(specialist, format: :json)
end
