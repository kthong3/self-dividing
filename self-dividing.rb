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

  digits = split_range(range_str)
  p digits

  # iterate through nested array
  digits.each do |digit_array|
    number = digit_array.join("").to_i
    divisible = []

    # iterate in each array of digits
    digit_array.each do |digit|
      if is_divisible_number?(number, digit)
        divisible << digit
      end

      # only add to output array if all digits are divisible
      if divisible.join("").to_i == number
        output << number
      end
    end
  end

  p output
end

def split_range(range_array)
  range_array.map! {|number| number.split("")}
end

def check_for

end


def is_divisible_number?(number, digit)
  number % digit.to_i == 0
end


is_self_dividing?(1,22)