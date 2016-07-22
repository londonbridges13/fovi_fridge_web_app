json.array!(@answers) do |answer|
  json.extract! answer, :id, :answer, :question_id, :question
  json.url answer_url(answer, format: :json)
end
