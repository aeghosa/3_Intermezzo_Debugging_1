def get_most_common_letter(text)
  strip = text.split("")
  strip.delete(" ")
  counter = Hash.new(0)
  strip.each do |char|
    counter[char] += 1
  end
  most_common = counter.sort_by {|k, v| v }
  most_common.max_by(&:last).first
end
puts get_most_common_letter("the roof, the roof, the roof is on fire!")

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"

=begin
NOTES:
THIS IS WHERE I GOT TO:
  def get_most_common_letter(text)
  # we put in a string
  counter = Hash.new(0)
  # we create a new empty hash with one argument, not sure why
  every = text.chars.each do |char|
    #over every element of the string text that we put into an array, we iterate over each, calling each element char.
    #we take the counter which is the new hash created above and enter into it, as index, each element char. 
    counter[char] += 1
    # if we print this we get a list of numbers
  end
  p every
  p counter.to_a.sort_by { |k, v| v }[0][0]
end

# puts "this is what we're getting: " + get_most_common_letter("the roof, the roof, the roof is on fire!")
# puts "this is what we should get: o"

=end

=begin
def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
  end
  counter.to_a.sort_by { |k, v| v }[0][0]
end

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"

=end