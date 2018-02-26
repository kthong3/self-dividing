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
  range = (upper..lower).to_a
  output = []

end

is_self_dividing?(1,10)