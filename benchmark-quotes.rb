# based on
# https://gist.github.com/bdeterling/810463
# http://stackoverflow.com/questions/1836467/is-there-a-performance-gain-in-using-single-quotes-vs-double-quotes-in-ruby

require 'benchmark'

n = 10000000
# m = n.to_s

Benchmark.bm do |x|
  x.report("assign single") { n.times do; c = 'a string'; end}
  x.report("assign double") { n.times do; c = "a string"; end}
  # x.report("assign interp") { n.times do; c = "a #{n} string"; end}
  # x.report("concat single") { n.times do; 'a ' + n.to_s + ' string b ' + n.to_s + ' string'; end}
  # x.report("concat double") { n.times do; "a " + n.to_s + " string b " + n.to_s + " string"; end}
  # x.report("concat interp") { n.times do; "a #{n} string b #{n} string"; end}
  # x.report("single optim") { n.times do; 'a ' + m + ' string b ' + m + ' string'; end}
  # x.report("double optim") { n.times do; "a " + m + " string b " + m + " string"; end}
  # x.report("interp optim") { n.times do; "a #{m} string b #{m} string"; end}
end

# results from running three times, taking middle value

# ruby-1.8.7-p358:
#       user     system      total        real
# assign single  2.270000   0.000000   2.270000 (  2.270754)
# assign double  2.280000   0.000000   2.280000 (  2.279482)

# ruby-1.9.3-p392:
#        user     system      total        real
# assign single  1.630000   0.000000   1.630000 (  1.628036)
# assign double  1.640000   0.000000   1.640000 (  1.642304)

# ruby-2.0.0-p0
       # user     system      total        real
# assign single  2.160000   0.000000   2.160000 (  2.165572)
# assign double  2.170000   0.000000   2.170000 (  2.175023)