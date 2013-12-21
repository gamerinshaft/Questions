json.array!(@m_answers) do |m_answer|
  json.extract! m_answer, :id, :check, :answer
  json.url m_answer_url(m_answer, format: :json)
end
