require 'csv'

class IntervalsController < ApplicationController
  def intervals
    csv_file = params[:csv_file]
    csv_file_path = csv_file.path

    sum = 0
    i = 0
    CSV.foreach(csv_file_path) do |row|
          if i > 29
            sum += row[0].line[i] - row[0].line[i-29]
            max = sum
            i++
          elsif i >29
            sum += row[0].line[i]
              if sum > max
                sum = max
              end
            i++
          end
    end
    max = max.round(2)
    render plain: max
  end
end
