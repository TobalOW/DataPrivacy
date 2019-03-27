class VulnerabilitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_vulnerability, only: [:show, :edit, :update, :destroy]

  # GET /vulnerabilities
  # GET /vulnerabilities.json
  def index
    if user_signed_in?
      @vulnerabilities = Vulnerability.all
    else
      redirect_to new_user_session_url
    end
  end

  # GET /vulnerabilities/1
  # GET /vulnerabilities/1.json
  def show
  end

  # GET /vulnerabilities/new
  def new
    @vulnerability = Vulnerability.new
  end

  # GET /vulnerabilities/1/edit
  def edit
  end

  # POST /vulnerabilities
  # POST /vulnerabilities.json
  def create
    @vulnerability = Vulnerability.new(vulnerability_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @vulnerability.save
        format.html { redirect_to @vulnerability, notice: 'Vulnerability was successfully created.' }
        format.json { render :show, status: :created, location: @vulnerability }
      else
        format.html { render :new }
        format.json { render json: @vulnerability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vulnerabilities/1
  # PATCH/PUT /vulnerabilities/1.json
  def update
    respond_to do |format|
      if @vulnerability.update(vulnerability_params)
        format.html { redirect_to @vulnerability, notice: 'Vulnerability was successfully updated.' }
        format.json { render :show, status: :ok, location: @vulnerability }
      else
        format.html { render :edit }
        format.json { render json: @vulnerability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vulnerabilities/1
  # DELETE /vulnerabilities/1.json
  def destroy
    @vulnerability.destroy
    respond_to do |format|
      format.html { redirect_to vulnerabilities_url, notice: 'Vulnerability was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vulnerability
      @vulnerability = Vulnerability.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vulnerability_params
      params.require(:vulnerability).permit(:active, :category_id, inputs_attributes: [:additional_data])
    end
end
