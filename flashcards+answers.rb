# To do. 
# Keep track of how many questions user got right and wrong.

# Start Addition Flashcards Method
def add_flashcards(method)
    system "clear"
    card_one = Random.rand(0..10)
    card_two = Random.rand(0..10)
    if method == "add"
        sign = "+"
        correct = card_one + card_two
    elsif method == "subtract"
        sign = "-"
        correct = card_one - card_two
    elsif method == "multiply"
        sign = "*"
        correct = card_one * card_two
    else
        card_two = Random.rand(0..10)
        sign = "/"
        correct = card_one / card_two
    end

    puts "#{card_one} #{sign} #{card_two}"
    answer = gets.chomp.to_i
    if answer == correct
        puts "Correct. #{card_one} #{sign} #{card_two} = #{answer}"
    else
        puts "Wrong. #{card_one} #{sign} #{card_two} = #{correct}"
    end

    puts "Would you like another card? (yes|no|restart)"
    continue = gets.chomp.downcase

    if continue == "yes"
        add_flashcards(method)
    elsif continue == "no"
        puts "Thanks for playing"
        exit
    elsif continue == "restart"
        start_game
    else
        puts "Sorry I didn't recognize #{continue}"
        puts "Please hit enter or try again"
        gets
        add_flashcards(method)
    end
end

# Method To Start The Game And Pick Cards
def start_game()
    wrong = 0
    right = 0
    system "clear"
    puts "Welcome to Math flashcards"
    puts "Choose your flashcard(add,subtract,multiply,divide)"
    pick = gets.chomp.downcase
    if pick == "add"
        add_flashcards("add")
    elsif pick == "subtract"
        add_flashcards("subtract")
    elsif pick == "multiply"
        add_flashcards("multiply")
    elsif pick == "divide"
        add_flashcards("divide")
    else
        puts "Sorry we didn't recongize #{pick}"
        puts "Please hit enter to try again"
        gets
        start_game
    end
end

start_game
