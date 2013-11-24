# various ways of comparing by case statement

# from Confident Ruby, class comparison and procs in ruby's case statement:

# http://ruby.about.com/od/control/a/The-Case-Statement.htm
# http://ruby-doc.org/docs/keywords/1.9/Object.html#method-i-case
# http://pragdave.blogs.pragprog.com/pragdave/2008/09/fun-with-procs.html

i = 10

puts "i: #{i}"

puts 'case: compare by value'

case i
when 1
  puts "i is 1!"
else
  puts "i is not 1!"
end

puts 'case: compare by Class'

case i
when Integer
  puts "i is an Integer!"
when String
  puts "i is a String!"
else
  puts "i is neither Integer nor String!"
end

puts 'case: compare by Boolean'

case
when i**2 == 100
  puts "i**2 == 100"
else
  puts "i**2 != 100"
end

puts 'case: compare by Boolean w/ Proc'

case i
when lambda{ |i_| i_**3 == 1000 }
  puts "i**3 == 1000"
else
  puts "i**3 != 1000"
end

