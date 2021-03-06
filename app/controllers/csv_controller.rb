class CsvController < ApplicationController

  before_action :authenticate_user!
  
  def import
    path = params[:file_csv].tempfile
    csv = BuiltWithImporter.new(path)
    if csv.read
      csv.import
      message = "Se importaron #{csv.count}"
    else
      message = "Problemas en la importación de los datos."
    end
    redirect_to :back, notice: message
  end

  def export
    @potential_clients = PotentialClient.between_date(params[:date_start].to_date, params[:date_end].to_date).not_useless
    @csv = CsvCreator.new.generate(@potential_clients, ["id", "name", "email", "last_name", "title"])
    respond_to do |format|
      format.html
      format.json { send_data @csv }
      format.csv { send_data @csv }
    end
  end

  def import_email_rejected
    path = params[:file_csv_emails].tempfile
    csv = BouncedEmailImporter.new(path)
    if csv.read
      csv.import
      flash[:success] = "Se importaron #{csv.count}"
    else
      flash[:error] = "Problemas en la importación de los datos."
    end
    redirect_to :back
  end

end