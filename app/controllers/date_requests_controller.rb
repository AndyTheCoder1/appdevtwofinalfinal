class DateRequestsController < ApplicationController
  before_action :set_date_request, only: %i[ show edit update destroy ]

  # GET /date_requests or /date_requests.json
  def index
    @date_requests = DateRequest.all
  end

  # GET /date_requests/1 or /date_requests/1.json
  def show
  end

  # GET /date_requests/new
  def new
    @date_request = DateRequest.new
  end

  # GET /date_requests/1/edit
  def edit
  end

  # POST /date_requests or /date_requests.json
  def create
    @date_request = DateRequest.new(date_request_params)

    respond_to do |format|
      if @date_request.save
        format.html { redirect_to @date_request, notice: "Date request was successfully created." }
        format.json { render :show, status: :created, location: @date_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @date_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /date_requests/1 or /date_requests/1.json
  def update
    respond_to do |format|
      if @date_request.update(date_request_params)
        format.html { redirect_to @date_request, notice: "Date request was successfully updated." }
        format.json { render :show, status: :ok, location: @date_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @date_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /date_requests/1 or /date_requests/1.json
  def destroy
    @date_request.destroy
    respond_to do |format|
      format.html { redirect_to date_requests_url, notice: "Date request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_request
      @date_request = DateRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def date_request_params
      params.require(:date_request).permit(:sender_id, :recipient_id, :acceptance, :weekly_rose)
    end
end
