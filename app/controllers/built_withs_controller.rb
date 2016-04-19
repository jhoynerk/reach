class BuiltWithsController < ApplicationController
  before_action :set_built_with, only: [:show, :edit, :update, :destroy]

  # GET /built_withs
  # GET /built_withs.json
  def index
    @built_withs = BuiltWith.all
  end

  # GET /built_withs/1
  # GET /built_withs/1.json
  def show
  end

  # GET /built_withs/new
  def new
    @built_with = BuiltWith.new
  end

  # GET /built_withs/1/edit
  def edit
  end

  # POST /built_withs
  # POST /built_withs.json
  def create
    @built_with = BuiltWith.new(built_with_params)
    respond_to do |format|
      if @built_with.save
        format.html { redirect_to @built_with, notice: 'Built with was successfully created.' }
        format.json { render :show, status: :created, location: @built_with }
      else
        format.html { render :new }
        format.json { render json: @built_with.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /built_withs/1
  # PATCH/PUT /built_withs/1.json
  def update
    respond_to do |format|
      if @built_with.update(built_with_params)
        format.html { redirect_to @built_with, notice: 'Built with was successfully updated.' }
        format.json { render :show, status: :ok, location: @built_with }
      else
        format.html { render :edit }
        format.json { render json: @built_with.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /built_withs/1
  # DELETE /built_withs/1.json
  def destroy
    @built_with.destroy
    respond_to do |format|
      format.html { redirect_to built_withs_url, notice: 'Built with was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_built_with
      @built_with = BuiltWith.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def built_with_params
      params.require(:built_with).permit(:domain, :location, :company, :vertical, :telephones, :people, :position, :emails, :twitter, :facebook, :linkedin, :google, :pinterest, :github, :instagram, :vk, :vimeo, :youtube, :city, :state, :zip, :country)
    end
end
