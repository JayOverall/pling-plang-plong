def factors(number)
  string = ""
  if number%3 == 0
    string += "Pling"
  end
  if number%5 == 0
    string += "Plang"
  end
  if number%7 == 0
    string += "Plong"
  end
  return string
end

def factors2(number)
  output =""
  output << "Pling" if number%3 == 0
  output << "Plang" if number%5 == 0
  output << "Plong" if number%7 == 0
  if output.is_empty? then return number else return output end
end

def do_the_pling_plang
  (1..100).map do |number|
    if factors(number) == ""
      # print "#{number}, "
    else
      # print "#{factors(number)}, "
    end
  end
end

require 'benchmark'
Benchmark.bmbm do |b|
  b.report("PL's Pling Plang Plong") do
    100.times do 
      do_the_pling_plang
    end
  end
end




