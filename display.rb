class Display
  def self.read_and_print
    File.open("/Users/topica/Dropbox/butler/butler.txt", "r").each_with_index do |line, index|
      priority = line.slice(/\d/).to_i 
      color    = set_color(priority)
      index += 1
      print "#{index} " + line.color(color)
    end
  end

  def self.open
    `subl /Users/topica/Dropbox/butler/butler.txt`
  end

  def self.help
    puts "Thanks for using butler, let's get started. Here are some commands you may be interested in:"
    puts "   > butler list #=> will list everything in your butler.txt file"
    puts "   > butler open #=> will open your butler.txt file in sublime"
    puts "   > butler this is an item with a tag and priority #my_tag 1"
  end


  private

    def self.set_color(priority)
      case priority
      when 1
        return '#31C431'
      when 2
        return '#476ed1'
      when 3
        return '#7582a3'
      else
        return '#8f8a33'
      end
    end
end
