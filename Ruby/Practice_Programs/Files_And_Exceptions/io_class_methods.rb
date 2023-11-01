# each_byte method

aFile = File.new("file1.txt", "r+")
if aFile
  aFile.each_byte { |ch| putc ch; putc ?- }
else
  puts "Unable to open a file"
end

# IO.readlines method

arr = IO.readlines("file1.txt")
puts arr[0]
puts arr[1]

# IO.foreach method

IO.foreach("file1.txt") { |block| puts block }
