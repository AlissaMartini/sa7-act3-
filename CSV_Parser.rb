require 'csv'
file_path = 'data.csv'
csv_data = []

CSV.foreach(file_path, headers: true) do |row|
  csv_data << row.to_hash
end

puts csv_data

