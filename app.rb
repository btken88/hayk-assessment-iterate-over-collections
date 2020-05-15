require 'pry'

class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000),
    Company.new('Omega', 25)
]

### Your code below this
# Generate a list of strings with the name and size (eg. "Alpha - 30")
def company_information_strings companies
  companies.map { |company| "#{company.name} - #{company.size}"}
end

# Combine all the sizes with reduce
def company_total_sizes companies
  companies.reduce(0) { |total_size, company| total_size + company.size}
end

# Filter the list to show only companies over 100
def companies_sized_over_100 companies
  filtered_companies = companies.select { |company| company.size > 100 }
  company_information_strings filtered_companies
end

# Find the company named "Beta"
def find_company_by_name companies, name = "Beta"
  companies.find {|company| company.name == name}
end

# Find the largest company
def find_largest_company companies
  companies.reduce() do |largest_company, company|
    company.size > largest_company.size ? company : largest_company
  end
end

# Sort the companies from largest to smallest
def sort_companies companies
  sorted_companies = companies.sort {|company1, company2| company1.size <=> company2.size}
  company_information_strings sorted_companies
end

binding.pry
0