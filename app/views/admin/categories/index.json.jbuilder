json.array!(@jobs_categories) do |jobs_category|
  json.extract! jobs_category, :id
  json.url jobs_category_url(jobs_category, format: :json)
end
