class BAnswersController < ApplicationController
  before_action :set_b_answer, only: [:show, :edit, :update, :destroy]
  before_action :set_b_question, except: [:destroy]
  # GET /b_answers
  # GET /b_answers.json
  def index
    @b_answers = BAnswer.all
  end

  # GET /b_answers/1
  # GET /b_answers/1.json
  def show
  end

  # GET /b_answers/new
  def new
    @b_answer = BAnswer.new
  end

  # GET /b_answers/1/edit
  def edit
    @b_answer = @b_question.b_answers.find(params[:id])
  end

  # POST /b_answers
  # POST /b_answers.json
  def create
    @b_answer = @b_question.b_answers.build(b_answer_params)

    respond_to do |format|
      if @b_answer.save
        format.html { redirect_to b_question_b_answer_path(@b_question,@b_answer), notice: 'B answer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @b_answer }
      else
        format.html { render action: 'new' }
        format.json { render json: @b_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /b_answers/1
  # PATCH/PUT /b_answers/1.json
  def update
    @b_answer = @b_question.b_answers.build(m_answer_params)
    respond_to do |format|
      if @b_answer.update(b_answer_params)
        format.html { redirect_to b_question_b_answer_path(@b_question,@b_answer), notice: 'B answer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @b_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /b_answers/1
  # DELETE /b_answers/1.json
  def destroy
    @b_answer.destroy
    respond_to do |format|
      format.html { redirect_to b_question_b_answers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_b_answer
      @b_answer = BAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def b_answer_params
      params.require(:b_answer).permit(:answer)
    end

    def set_b_question
      @b_question = BQuestion.find(params[:b_question_id])
    end
end
