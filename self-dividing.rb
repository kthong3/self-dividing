# pseudocode
# input: upper bound integer and lower bound integer
# output: array with self-dividing integers

# create range with upper and lower
# create output array
# convert range into array of integers
# iterate through array
  # discard any number that includes 0 since numbers cannot divide by 0
  # count how many digits
  # check if integer is divisible by each digit
  # skip if not divisible
  # add integer to output array if divisible by all digits
# return output array

def is_self_dividing?(upper, lower)
  range_str = (upper.to_s..lower.to_s).to_a
  output = []

  range_str.delete_if {|input| input.include?("0") }
  p range_str

  range_str.each do |number|
    digits = number.split("")

    digits.each do |digit|
      if number.to_i % digit.to_i == 0
        p digit
      end
    end
  end
end

is_self_dividing?(1,12)