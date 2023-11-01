# creating a file

File.open("file1.txt", "w+") do |f|
  f.puts "This is file 2"
  f.write "Ruby is a programming language."
end

# reading a file

aFile = File.new("file1.txt", "r")
if aFile
  puts aFile.sysread(10)
else
  puts "Unable to open file."
end

# Writing a file

aFile = File.new("file1.txt", "w+")
if aFile
  aFile.syswrite("Rails is a framework of Ruby Language.")
else
  puts "Unable to open a file"
end

# Rename of a file

File.rename("file1.txt", "renamed_file1.txt")

# Deletion of a file

File.delete("renamed_file1.txt")
