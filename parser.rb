require_relative 'file_manager'

class Parser
  def self.input_parse(input)
    priority = input.slice!(/\d+$/)  || '9'
    tag      = input.slice!(/#\w+/) || '#zzz'
    input.strip!
    FileManager.controller([ priority.to_i, tag, input ])
  end

  def self.file_parse(input)
    priority = input.slice!(/[\d+|-]/).to_i
    tag      = input.slice!(/#\w+/) || '#zzz'
    input.slice!(/\[\]/) && input.strip!
    [priority, tag, input]
  end

  def self.pop_parse(input)
    index = input.slice!(/\d+/)
    FileManager.delete_line(index)
  end
end