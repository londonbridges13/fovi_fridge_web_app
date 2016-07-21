json.array!(@surveys) do |survey|
  json.extract! survey, :id, :question
  json.url survey_url(survey, format: :json)
end
