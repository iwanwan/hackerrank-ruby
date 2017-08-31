class Staircase
  def self.print(size)
    staircase = []
    for i in 0..(size-1)
      number_of_hash  = i + 1
      number_of_space = size - number_of_hash
      space = generate_string_from_char(number_of_space, " ")
      hash  = generate_string_from_char(number_of_hash, "#")

      staircase[i] = "#{space}#{hash}"
    end

    staircase.join("\n")
  end

  def self.generate_string_from_char(size, char)
    str = ""
    for i in 1..size
      str += char
    end
    str
  end
end
