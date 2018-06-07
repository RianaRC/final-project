class EvenementsController < ApplicationController
  before_action :set_evenement, only: [:show, :edit, :update, :destroy]

  # GET /evenements
  # GET /evenements.json
  def index
    @evenements = Evenement.all
  end

  # GET /evenements/1
  # GET /evenements/1.json
  def show
    if user_signed_in?
    @evenement = Evenement.find(params[:id])
    else
      redirect_to new_user_session_path
    end
  end

  # GET /evenements/new
  def new
    if user_signed_in?
    @evenement = Evenement.new
    else
    redirect_to new_user_session_path
    end
  end

  # GET /evenements/1/edit
  def edit
  end

  # POST /evenements
  # POST /evenements.json
  def create
    @evenement = Evenement.new(evenement_params)
    @evenement.user_id = current_user.id
    respond_to do |format|
      if @evenement.save
        format.html { redirect_to @evenement, notice: 'Evenement was successfully created.' }
        format.json { render :show, status: :created, location: @evenement }
      else
        format.html { render :new }
        format.json { render json: @evenement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evenements/1
  # PATCH/PUT /evenements/1.json
  def update
    respond_to do |format|
      if @evenement.update(evenement_params)
        format.html { redirect_to @evenement, notice: 'Evenement was successfully updated.' }
        format.json { render :show, status: :ok, location: @evenement }
      else
        format.html { render :edit }
        format.json { render json: @evenement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evenements/1
  # DELETE /evenements/1.json
  def destroy
    @evenement.destroy
    respond_to do |format|
      format.html { redirect_to evenements_url, notice: 'Evenement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evenement
      @evenement = Evenement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evenement_params
      params.require(:evenement).permit(:titre, :description, :date, :price, :category_id, :organisateur_id)
    end
end
