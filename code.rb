class InvalidCharacterCodeError < StandardError
end

def caesar_shift(string_shift, no_of_shifts=3)
  shifted_string = ""
  substrings = string_shift.split(" ")

  substrings.each do |substring|
    begin
      integer_value = Integer(substring)
      character = map_integer_to_character(integer_value, no_of_shifts) # Pass shift value
      shifted_string += character

    rescue ArgumentError
      puts "Error: Invalid Integer"
    rescue InvalidCharacterCodeError => e
      puts "Error: #{e.message}"
    end
  end
  return shifted_string
end

def map_integer_to_character(integer, shift)
  # Range check
  if integer < 0 || integer > 51
    raise InvalidCharacterCodeError, "Integer #{integer} is out of range (0-51)"
  end

  # Apply the shift
  shifted_integer = (integer + shift) % 52  # Modulo 52 to wrap around

  # Lowercase or uppercase
  if shifted_integer <= 25
    ascii_code = shifted_integer + 97
    character = ascii_code.chr

  else
    ascii_code = (shifted_integer - 26) + 65
    character = ascii_code.chr
  end

  return character
end
