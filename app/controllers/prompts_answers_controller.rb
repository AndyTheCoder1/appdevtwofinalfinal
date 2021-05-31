class PromptsAnswersController < ApplicationController
  before_action :set_prompts_answer, only: %i[ show edit update destroy ]

  # GET /prompts_answers or /prompts_answers.json
  def index
    @prompts_answers = PromptsAnswer.all
  end

  # GET /prompts_answers/1 or /prompts_answers/1.json
  def show
  end

  # GET /prompts_answers/new
  def new
    @prompts_answer = PromptsAnswer.new
  end

  # GET /prompts_answers/1/edit
  def edit
  end

  # POST /prompts_answers or /prompts_answers.json
  def create
    @prompts_answer = PromptsAnswer.new(prompts_answer_params)

    respond_to do |format|
      if @prompts_answer.save
        format.html { redirect_to @prompts_answer, notice: "Prompts answer was successfully created." }
        format.json { render :show, status: :created, location: @prompts_answer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prompts_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prompts_answers/1 or /prompts_answers/1.json
  def update
    respond_to do |format|
      if @prompts_answer.update(prompts_answer_params)
        format.html { redirect_to @prompts_answer, notice: "Prompts answer was successfully updated." }
        format.json { render :show, status: :ok, location: @prompts_answer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prompts_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prompts_answers/1 or /prompts_answers/1.json
  def destroy
    @prompts_answer.destroy
    respond_to do |format|
      format.html { redirect_to prompts_answers_url, notice: "Prompts answer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prompts_answer
      @prompts_answer = PromptsAnswer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prompts_answer_params
      params.require(:prompts_answer).permit(:prompt_one, :owner_id, :prompt_id, :prompt_two, :prompt_three)
    end
end
