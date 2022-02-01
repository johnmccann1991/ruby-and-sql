# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file
puts Company.all.count
puts "There are now #{Company.all.count} companies."

# 2. create new companies
[ name: "Apple, Inc.", url: "https://apple.com", city: "Cupertino", state: "CA"]

values = { name: "Apple, Inc."
           url: "https://apple.com",
           city: "Cupertino",
           state: "CA" }

apple = Company.new(values)
apple.save
puts "There are now #{Company.all.count} companies."




# 3. query companies table
puts Company.all

company = Company.where({ state: "CA" }) [0]
puts company.inspect

# 4. read column values from row
puts company.read_attribute (:url)
puts company.url


# 5. update attribute value
company.write_attribute(:slogan, "Think different.")
company.slogan = "Think different."
company.save

puts company.inspect











