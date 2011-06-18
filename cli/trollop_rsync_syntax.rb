require 'rubygems'
require 'trollop'

def parse_filename(filename)
  parsed = { :path=>filename }

  if filename.split(':').length == 2
    parsed[:host], parsed[:path] = filename.split(':')
    if parsed[:host].split('@').length == 2
      parsed[:user], parsed[:host] = parsed[:host].split('@')
    end
  end

  return parsed
end

def trollop_example argv

  global_opts = Trollop::options do
    banner "demo to emulate rsync / scp syntax"
    opt :dry_run, "Don't actually do anything", :short => "-n"
  end

  puts "Global options: #{global_opts.inspect}"
  puts "Remaining arguments: #{argv.inspect}"


  if argv.length >= 1
    puts "parse argv0: %s" % parse_filename(argv[0]).inspect
    if argv.length >= 2
      puts "parse argv1: %s" % parse_filename(argv[1]).inspect
    end
  end

end

trollop_example(ARGV) if __FILE__ == $0
