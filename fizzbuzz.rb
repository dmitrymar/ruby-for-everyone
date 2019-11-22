def fizz_buzz(num)
    divisible_by_3 = num % 3 == 0
    divisible_by_5 = num % 5 == 0    
    if divisible_by_3 && divisible_by_5
        puts "Fizz Buzz #{num}"
    elsif divisible_by_3
        puts "Fizz #{num}"
    elsif divisible_by_5
        puts "Buzz #{num}" 
    else
        puts num
    end
end
(1..30).each do |num|
    fizz_buzz(num)
end
