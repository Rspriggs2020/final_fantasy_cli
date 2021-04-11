#command line interface
class CLI 
    
    def run
        puts " "
        puts "Welcome to the world of Final Fantasy!"
        puts " "
        puts "Are you ready to choose your Guardian?"
        input = user_input
        menu
    end

    def user_input
        gets.strip
    end

    def menu
       response = user_input
        if response == "y"
            print_guardians
            menu
        elsif response == "exit"
            goodbye
        else
            invalid
        end
    end

    def goodbye
        puts "May Yevon be with you."
    end

    def invalid
        puts "You've shaken up the Chocobos!"
        menu
    end

    def print_guardians
       Character.all.each_with_index do |guardian, index|
        puts "#{index}. #{guardian}"
       end
       select_guradian(selection)
    end

    def select_guardian
        puts "please enter the name of the Guardian you would like to know more about."
        selection = user_input
        puts " "
    end

    def guardian_details(guardian)
        puts "#{guardian}."
        menu
    end
end