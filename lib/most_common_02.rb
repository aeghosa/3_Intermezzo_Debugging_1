
def get_most_common_letter(text)
  counter = Hash.new(0)
# p "A new hash is created, setting value to #{counter}"
   text = text.delete(" ")

# p "turn text in an array #{text.chars} to be iterated over" 
  text.chars.each do |char|
  counter[char] += 1
  # p  counter
  end
  counter.max_by { |k, v| v }[0][0]
  # p "returns value of the counter(each character hash value) which is #{counter}"
  # p counter.to_a..... found the .to_a provides no value so removed
  # Used how to find key vlue of a hash on stack overflow.... .max_by
  @most_common_letter = counter.max_by { |k, v| v }[0][0]
  @most_common_letter << """"
end
puts get_most_common_letter("the roof, the roof, the roof is on fire!")
# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"
