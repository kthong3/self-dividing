# pseudocode
# input: upper bound integer and lower bound integer
# output: array with self-dividing integers

# create range with upper and lower
# create output array
# convert range into array of integers
# iterate through array
  # count how many digits
  # check if integer is divisible by each digit
  # skip if not divisible
  # add integer to output array if divisible by all digits
# return output array

def is_self_dividing?(upper, lower)
  range = (upper.to_s..lower.to_s).to_a
  output = []

  range.each do |number|
    numbers = number.split("")
    p numbers

  end

end

is_self_dividing?(1,10)