class MQuestionsController < ApplicationController
  before_action :set_m_question, only: [:show, :edit, :update, :destroy]

  # GET /m_questions
  # GET /m_questions.json
  def index
    @m_questions = MQuestion.all
  end

  # GET /m_questions/1
  # GET /m_questions/1.json
  def show
  end

  # GET /m_questions/new
  def new
    @m_question = MQuestion.new
  end

  # GET /m_questions/1/edit
  def edit
  end

  # POST /m_questions
  # POST /m_questions.json
  def create
    @m_question = MQuestion.new(m_question_params)

    respond_to do |format|
      if @m_question.save
        format.html { redirect_to @m_question, notice: 'M question was successfully created.' }
        format.json { render action: 'show', status: :created, location: @m_question }
      else
        format.html { render action: 'new' }
        format.json { render json: @m_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m_questions/1
  # PATCH/PUT /m_questions/1.json
  def update
    respond_to do |format|
      if @m_question.update(m_question_params)
        format.html { redirect_to @m_question, notice: 'M question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @m_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_questions/1
  # DELETE /m_questions/1.json
  def destroy
    @m_question.destroy
    respond_to do |format|
      format.html { redirect_to m_questions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_question
      @m_question = MQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m_question_params
      params.require(:m_question).permit(:content)
    end
end
