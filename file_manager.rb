require_relative 'parser'
require_relative 'sorter'

class FileManager
  def self.controller(new_item)
    all_items = self.read_file
    all_items << new_item
    Sorter.sort(all_items)
    self.write_to_file(all_items)
  end

  def self.read_file
    file = File.open('/Users/topica/Dropbox/butler/butler.txt', 'r')
    all_items = file.inject([]) do |items, line|
      items << Parser.file_parse(line)
    end    
  end

  def self.write_to_file(formatted_data)
    file = File.open('/Users/topica/Dropbox/butler/butler.txt', 'w+')
    formatted_data.each do |line|
      file.puts "[#{line[0]}]  #{line[2]}  #{line[1]}"
    end
  end

  def self.delete_line(index)
    all_items = self.read_file
    all_items.delete_at(index.to_i - 1)
    Sorter.sort(all_items)
    self.write_to_file(all_items)
  end

end
