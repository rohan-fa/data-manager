require "csv"

CSV.foreach("./data.csv") do |row|
  # use row here...
  puts row['Name']
end