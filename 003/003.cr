def sum_array(input : String) : String
  lines = input.lines
  array_len = lines[0].to_i
  num_lines = lines[1..-1]

  result = num_lines.map do |par|
    a, b = par.split(' ').map { |num| num.to_i }
    (a + b).to_s
  end

  result.join(' ')
end

input = "3
100 8
15 245
1945 54"

puts sum_array(input)
