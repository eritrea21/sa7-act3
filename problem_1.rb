require 'csv'

# Function to parse CSV file into an array of hashes
def parse_csv(filename)
  data = []
  
  CSV.foreach(filename, headers: true) do |row|
    data << row.to_h
  end
  
  data
end

# Path to the CSV file
filename = 'data.csv'

# Parse the CSV file
result = parse_csv(filename)

# Print the result
puts result
