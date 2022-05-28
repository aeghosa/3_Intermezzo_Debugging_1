def get_most_common_letter(text)
  
  counter = Hash.new(0)

  strip = text.split("")
  strip.delete(" ")
  strip.each do |char|
    counter[char] += 1
  end
  most_common = counter.sort_by {|k, v| v }
  most_common.max_by(&:last).first
end
puts get_most_common_letter("the roof, the roof, the roof is on fire!")


