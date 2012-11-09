class Sorter
  def self.sort(all_items)
    all_items.sort_by! { |item| [ item[0], item[1] ] }
  end
end