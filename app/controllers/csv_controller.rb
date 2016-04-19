class CsvController < ApplicationController
  def import
    path = params[:file_csv].tempfile
    csv = BuiltWithImporter.new(path)
    if csv.read
      csv.import 
      flash[:success] = "Se importaron #{csv.count}"
    else
      flash[:success] = "Problemas en la importación de los datos."
    end
    redirect_to :back
  end

  def export
    @potential_clients = PotentialClient.between_date(params[:date_start].to_date, params[:date_end].to_date).not_useless
    respond_to do |format|
      format.html
      format.json { send_data CsvCreator.new.generate(@potential_clients, ["id", "name", "email", "last_name", "title"]) }
      format.csv { send_data CsvCreator.new.generate(@potential_clients, ["id", "name", "email", "last_name", "title"]) }
    end
  end

  def import_email_rejected
    path = params[:file_csv].tempfile
    csv = BouncedEmailImporter.new(path)
    if csv.read
      csv.import 
      flash[:success] = "Se importaron #{csv.count}"
    else
      flash[:success] = "Problemas en la importación de los datos."
    end
    redirect_to :back
  end
end
