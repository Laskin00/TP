require 'csv'

class FiltersController < ApplicationController
  def filters
    csv_file = params[:csv_file]
    csv_file_path = csv_file.path

    result = 0
    CSV.foreach(csv_file_path) do |row|
      if row[2].to_i % 2 == 0
        result += row[1].to_f
      end
    end
    result = result.round(2)
    render plain: result
  end
end
