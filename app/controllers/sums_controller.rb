require 'csv'

class SumsController < ApplicationController
  def create
    csv_file = params[:csv_file]
    csv_file_path = csv_file.path

    result = 0
    CSV.foreach(csv_file_path) do |row|
      result += row[0].to_f
    end
    result = result.round(2)
    render plain: result
  end
end
