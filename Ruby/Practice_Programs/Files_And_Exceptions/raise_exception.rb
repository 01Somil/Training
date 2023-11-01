def raise_exception
  begin
    puts "Before the exception"
    raise "Exception occured"
    puts "After exception occured"
  rescue
    puts "Exception solved"
  else
    puts "If no exception occur then else statement will execute"
  ensure
    puts "Ensure block always run whether an exception is raised or not"
  end
  puts "Outside the exception block"
end

raise_exception
