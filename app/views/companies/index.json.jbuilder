json.array!(@companies) do |company|
  json.extract! company, :id, :logo, :name, :city, :country, :employee_satisfaction, :votes
  json.url company_url(company, format: :json)
end
