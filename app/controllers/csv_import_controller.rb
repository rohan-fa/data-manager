class CsvImportController < ApplicationController
  require 'csv'
  
  def new
  end

  
  def create
    if params[:csv_file].present?
      # Process and import the CSV file here
      csv_data = params[:csv_file].read
      options = {headers: true, col_sep:','}
      CSV.foreach(params[:csv_file].path, **options) do |row|

        full_name = row['Name']
        location_name = row['Location']
        affiliation_name = row['Affiliations']

        # Split the full name into first and last name
        first_name, last_name = full_name.split
        
        person = Person.create(
          first_name: first_name,
          last_name: last_name,
          weapon: row['Weapon'],
          gender: row['Gender'],
          species: row['Species'],
          vehicle: row['Vehicle']
        )
        
        location = Location.find_or_create_by(name: location_name)
        person.locations << location
        
        affiliation = Affiliation.find_or_create_by(name: affiliation_name)
        person.affiliations << affiliation   
      end

      redirect_to people_index_path, notice: 'CSV data imported successfully.'
    else
      flash[:alert] = 'Please select a CSV file to import.'
      render :new
    end
  end
end
