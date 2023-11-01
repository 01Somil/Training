# creating a directory
Dir.mkdir("New_Directory")

puts Dir.pwd
puts Dir.entries("<directory-path>").join(" ")

# for-each loop on directory entries list
Dir.foreach("<directory-path>") do |entry|
  puts entry
end

# Deleting a directory
Dir.delete("New_Directory")
