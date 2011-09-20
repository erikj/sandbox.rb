require 'rubygems'
require 'Redcarpet'
require 'Nokogiri'
require 'Albino'

# background:
# - http://github.github.com/github-flavored-markdown/
# - http://railscasts.com/episodes/272-markdown-with-redcarpet
# - https://github.com/railscasts/episode-272/blob/master/blog-after/app/helpers/application_helper.rb

def markdown(text)
  # options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode, :smart]
  options = [:filter_html, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode, :smart]


  # :fenced_code,
  #        :hard_wrap,
  #        :filter_html,
  #        :smart)

  # syntax_highlighter(Redcarpet.new(text, *options).to_html)
  Redcarpet.new(text, *options).to_html
end

def syntax_highlighter(html)
  doc = Nokogiri::HTML(html)
  doc.search("//pre[@lang]").each do |pre|
    pre.replace Albino.colorize(pre.text.rstrip, pre[:lang])
  end
  doc.to_s
end


if __FILE__ == $0 # and $1
  # puts ARGV.inspect

  fp = File.open(ARGV[0])
  md = fp.read()
  fp.close()
  puts markdown(md)
  
end
