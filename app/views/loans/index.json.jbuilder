json.array!(@loans) do |loan|
  json.extract! loan, :id, :thing_id
  json.url loan_url(loan, format: :json)
end
