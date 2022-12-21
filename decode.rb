# frozen_string_literal: true

# morse code hash 
MORSE = {
    ".-" => "A",
    "-..." => "B",
    "-.-." => "C",
    "-.." => "D",
    "." => "E",
    "..-." => "F",
    "--." => "G",
    "...." => "H",
    ".." => "I",
    ".---" => "J",
    "-.-" => "K",
    ".-.." => "L",
    "--" => "M",
    "-." => "N",
    "---" => "O",
    ".--." => "P",
    "--.-" => "Q",
    ".-." => "R",
    "..." => "S",
    "-" => "T",
    "..-" => "U",
    "...-" => "V",
    ".--" => "W",
    "-..-" => "X",
    "-.--" => "Y",
    "--.." => "Z",
}

# decode a character
def decode_char(string)
	# return matching value in the hash
   return MORSE[string]
end

#decode a word
def decode_word(string)
    morseArr = string.split
    formed_word = ''

		# Decode each character in the string after spitting it
		# return matching char and add it to the formed word
    morseArr.each do |char|
        formed_word += decode_char(char)
    end

    return formed_word
end
