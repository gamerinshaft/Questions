json.array!(@m_questions) do |m_question|
  json.extract! m_question, :id, :content
  json.url m_question_url(m_question, format: :json)
end
