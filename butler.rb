require 'rainbow'
require_relative 'parser'
require_relative 'display'
  
if ARGV.first.is_a?(String)
  case ARGV.first.downcase
  when 'list'
    Display.read_and_print
  when 'open'
    Display.open
  when 'pop'
    Parser.pop_parse(ARGV.join(" "))
  else
    Parser.input_parse(ARGV.join(" "))
  end
else
  Display.help
end