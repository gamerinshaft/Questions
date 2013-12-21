json.array!(@b_questions) do |b_question|
  json.extract! b_question, :id, :content
  json.url b_question_url(b_question, format: :json)
end
