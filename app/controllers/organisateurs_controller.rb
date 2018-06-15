class OrganisateursController < ApplicationController
  before_action :set_organisateur, only: [:show, :edit, :update, :destroy]

  # GET /organisateurs
  # GET /organisateurs.json
  def index
    @organisateurs = Organisateur.all
    respond_to do |format|
      format.html
      format.json {render json: @organisateurs}
    end
  end

  # GET /organisateurs/1
  # GET /organisateurs/1.json
  def show
  end

  # GET /organisateurs/new
  def new
    @organisateur = Organisateur.new
    @statuses = Status.all
    if user_signed_in?
      @categories = Category.all
    else
      redirect_to new_user_session_path
    end
  end

  # GET /organisateurs/1/edit
  def edit
  end

  # POST /organisateurs
  # POST /organisateurs.json
  def create
    @organisateur = Organisateur.new(organisateur_params)
    @organisateur.status = Status.find(params[:status_id])
    @organisateur.user = current_user

    respond_to do |format|
      if @organisateur.save
        format.html { redirect_to new_evenement_path, notice: 'Organisateur was successfully created.' }
        format.json { render :show, status: :created, location: @organisateur }
        format.js
      else
        format.html { render :new }
        format.json { render json: @organisateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organisateurs/1
  # PATCH/PUT /organisateurs/1.json
  def update
    respond_to do |format|
      if @organisateur.update(organisateur_params)
        format.html { redirect_to @organisateur, notice: 'Organisateur was successfully updated.' }
        format.json { render :show, status: :ok, location: @organisateur }
      else
        format.html { render :edit }
        format.json { render json: @organisateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organisateurs/1
  # DELETE /organisateurs/1.json
  def destroy
    @organisateur.destroy
    respond_to do |format|
      format.html { redirect_to organisateurs_url, notice: 'Organisateur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organisateur
      @organisateur = Organisateur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organisateur_params
      params.require(:organisateur).permit(:title, :about)
    end
end
