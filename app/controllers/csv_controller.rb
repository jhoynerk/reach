class CsvController < ApplicationController

  def import
    path = params[:file].tempfile
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
    @potential_clients = PotentialClient.all
    respond_to do |format|
      format.html
      format.csv { send_data @potential_clients.to_csv }
    end
  end
end
