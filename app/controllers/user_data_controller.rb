class UserDataController < ApplicationController
  before_action :set_user_datum, only: %i[ show edit update destroy ]

  # GET /user_data or /user_data.json
  def index
    @user_data = UserDatum.all
  end



   def revealer
      if current_user.user_datum.daily_photo_reveals > 0
        input = params.fetch("owner_id")
        @user = UserDatum.find_by!({ :owner_id => input })

        new_count = current_user.user_datum.daily_photo_reveals - 1
        current = UserDatum.find_by!({ :owner_id => current_user.id })
        current.daily_photo_reveals = new_count
        current.save
        render({ :template => "user/revealing.html.erb" })
      else
        redirect_to("/explore", { :notice => "You've used up all your photo reveals for today- come back tomorrow to view more profiles!" })
      end
    end


  # GET /user_data/1 or /user_data/1.json
  def show
  end

  # GET /user_data/new
  def new
    @user_datum = UserDatum.new
  end

  # GET /user_data/1/edit
  def edit
  end

  # POST /user_data or /user_data.json
  def create
    @user_datum = UserDatum.new(user_datum_params)

    respond_to do |format|
      if @user_datum.save
        format.html { redirect_to @user_datum, notice: "User datum was successfully created." }
        format.json { render :show, status: :created, location: @user_datum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_data/1 or /user_data/1.json
  def update
    respond_to do |format|
      if @user_datum.update(user_datum_params)
        format.html { redirect_to @user_datum, notice: "User datum was successfully updated." }
        format.json { render :show, status: :ok, location: @user_datum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_data/1 or /user_data/1.json
  def destroy
    @user_datum.destroy
    respond_to do |format|
      format.html { redirect_to user_data_url, notice: "User datum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_datum
      @user_datum = UserDatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_datum_params
      params.require(:user_datum).permit(:owner_id, :full_name, :religion, :political_affiliation, :height, :hometown, :age, :job_title, :school, :gender, :drinking, :smoking, :undergrad_school, :daily_photo_reveals, :interested_in_men, :interested_in_women, :interested_in_men_and_women)
    end
end
