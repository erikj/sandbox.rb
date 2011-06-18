require 'rubygems'
require 'trollop'

def parse_filename(filename)
  parsed = { :path=>filename }

  if filename.split(':').length > 1
    parsed[:server], parsed[:path] = filename.split(':')
    if parsed[:server].split('@').length > 1
      parsed[:user], parsed[:server] = filename.split('@')
    end
  end

  return parsed
end

def trollop_example argv

  global_opts = Trollop::options do
    banner "magic file deleting and copying utility"
    opt :dry_run, "Don't actually do anything", :short => "-n"
    # stop_on SUB_COMMANDS
  end

  puts "Global options: #{global_opts.inspect}"
  # puts "Subcommand: #{cmd.inspect}"
  # puts "Subcommand options: #{cmd_opts.inspect}"
  puts "Remaining arguments: #{argv.inspect}"


  if argv.length >= 1
    puts "TODO: parse argv0: %s" % parse_filename(argv[0]).inspect

    # puts "TODO: parse argv1: argv1 %s" % argv[1]
  end

end

trollop_example(ARGV) if __FILE__ == $0
  
# end