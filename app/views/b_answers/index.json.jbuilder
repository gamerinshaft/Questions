json.array!(@b_answers) do |b_answer|
  json.extract! b_answer, :id, :answer
  json.url b_answer_url(b_answer, format: :json)
end
