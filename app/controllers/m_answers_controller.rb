class MAnswersController < ApplicationController
  before_action :set_m_answer, only: [:show, :edit, :update, :destroy]

  # GET /m_answers
  # GET /m_answers.json
  def index
    @m_answers = MAnswer.all
  end

  # GET /m_answers/1
  # GET /m_answers/1.json
  def show
  end

  # GET /m_answers/new
  def new
    @m_answer = MAnswer.new
  end

  # GET /m_answers/1/edit
  def edit
  end

  # POST /m_answers
  # POST /m_answers.json
  def create
    @m_answer = MAnswer.new(m_answer_params)

    respond_to do |format|
      if @m_answer.save
        format.html { redirect_to @m_answer, notice: 'M answer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @m_answer }
      else
        format.html { render action: 'new' }
        format.json { render json: @m_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m_answers/1
  # PATCH/PUT /m_answers/1.json
  def update
    respond_to do |format|
      if @m_answer.update(m_answer_params)
        format.html { redirect_to @m_answer, notice: 'M answer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @m_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_answers/1
  # DELETE /m_answers/1.json
  def destroy
    @m_answer.destroy
    respond_to do |format|
      format.html { redirect_to m_answers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_answer
      @m_answer = MAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m_answer_params
      params.require(:m_answer).permit(:check, :answer)
    end
end
