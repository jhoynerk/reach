class PotentialClientsController < ApplicationController
  before_action :set_potential_client, only: [:show, :edit, :update, :destroy]

  # GET /potential_clients
  # GET /potential_clients.json
  def index
    if current_user.admin?
      @potential_clients = PotentialClient.all.paginate(:page => params[:page], :per_page => 5)
    else
      @potential_clients = PotentialClient.where(user: current_user).paginate(:page => params[:page], :per_page => 5)

    end
  end

  # GET /potential_clients/1
  # GET /potential_clients/1.json
  def show
  end

  # GET /potential_clients/new
  def new
    @potential_client = PotentialClient.new
  end

  # GET /potential_clients/1/edit
  def edit
  end

  # POST /potential_clients
  # POST /potential_clients.json
  def create
    @potential_client = PotentialClient.new(potential_client_params)

    respond_to do |format|
      if @potential_client.save
        format.html { redirect_to @potential_client, notice: 'Potential client was successfully created.' }
        format.json { render :show, status: :created, location: @potential_client }
      else
        format.html { render :new }
        format.json { render json: @potential_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /potential_clients/1
  # PATCH/PUT /potential_clients/1.json
  def update
    respond_to do |format|
      if @potential_client.update(potential_client_params)
        format.html { redirect_to @potential_client, notice: 'Potential client was successfully updated.' }
        format.json { render :show, status: :ok, location: @potential_client }
      else
        format.html { render :edit }
        format.json { render json: @potential_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /potential_clients/1
  # DELETE /potential_clients/1.json
  def destroy
    @potential_client.destroy
    respond_to do |format|
      format.html { redirect_to potential_clients_url, notice: 'Potential client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_potential_client
      @potential_client = PotentialClient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def potential_client_params
      params.require(:potential_client).permit(:name, :email, :last_name, :title, :built_with_id, :user_id, :useless, :comment)
    end
end
