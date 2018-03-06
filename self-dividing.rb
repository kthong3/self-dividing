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

def is_self_dividing?(lower, upper)
  range_str_array = (lower.to_s..upper.to_s).to_a

  # delete all zeros
  range_without_zeros = delete_zeros(range_str_array)

  number_strings = split_range(range_without_zeros)
  output = add_to_output(number_strings)
end

def delete_zeros(range_str_array)
  range_str_array.delete_if {|input| input.include?("0") }
end

def split_range(range_array)
  range_array.map! {|number| number.split("")}
end

# input: array of number strings
# output: array of divisible number strings
# if number strings are the same as input, it is divisible
def find_divisibles(number, digits_array)
  divisibles = []
  digits_array.each do |digit_str|
    if is_divisible_by_digit?(number, digit_str)
       divisibles << digit_str
    end
  end
  divisibles
end

def is_divisible_by_digit?(number, digit_str)
  number % digit_str.to_i == 0
end

# only add divisible numbers to output array if all digits are divisible
def add_to_output(number_strings)
  output = []
  number_strings.each do |digit_array|
    number = digit_array.join("").to_i
    divisibles_in_array = find_divisibles(number, digit_array)
    if divisibles_in_array.join("").to_i == number
      output << number
    end
  end
  output
end

p is_self_dividing?(1,22)