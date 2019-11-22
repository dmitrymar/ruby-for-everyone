operations = ["addition", "subtraction", "multiplication", "division"]

def start(types)
    puts "What kind of math do you want to solve"
    for num in 0..3
        puts "Type #{num+1} for #{types[num]}"
    end
    id = gets.to_i
    problem(id, types)
end

def check(solution, answer)
    if answer == solution
        puts "Correct"
    else
        puts "Incorrect. Correct answer is #{solution}"
    end
end

def ask(val_1, val_2, op)
    puts "What is #{val_1} #{op} #{val_2}"
end

def solution(val_1, val_2, id)
    if id == 1
        return val_1 + val_2
    elsif id == 2
        return val_1 - val_2
    elsif id == 3
        return val_1 * val_2
    else
        return val_1 / val_2
    end
end

def problem(id, types)
    operationsHash = {
        "addition" => "+",
        "subtraction" => "-",
        "multiplication" => "*",
        "division" => "/"
    }
    index = id-1
    puts "You've chosen #{types[index]}. Solve the problem below."
    val_1 = Random.rand(0..10)
    val_2 = Random.rand(0..10)
    ask(val_1, val_2, operationsHash[types[index]])
    problem = solution(val_1, val_2, id)
    answer = gets.to_i
    check(problem, answer)
end

start(operations)
