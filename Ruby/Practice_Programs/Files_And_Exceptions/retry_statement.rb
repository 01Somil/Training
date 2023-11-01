begin
  dir = Dir.mkdir("newDir")
  if dir
    puts "Directory created successfully"
  end
rescue
  Dir.delete("newDir")
  retry
end
