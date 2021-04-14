class CLI 
    
    def run
        puts " "
        puts "Welcome to the world of Final Fantasy!"
        puts " "
        puts "Are you ready to choose your Guardian?"
        puts " "
        puts " "
        puts "To see the list of Guardians, enter 'y', or enter 'exit'."
        API.get_data
        menu
    end

    def user_input
        gets.strip.downcase
    end

    def menu
       case gets.strip.downcase
       when "y"
            print_guardians
       when "exit"
            goodbye
       else
            invalid
        end
    end

    def goodbye
        puts " "
        puts "Thank you for your interest in the Guardians!"
        puts " "
        puts "May Yevon be with you."
        puts " "
    end

    def invalid
        puts " "
        puts "You've shaken up the Chocobos!"
        puts " "
        puts "Invalid Entry. To try again enter 'y' or enter 'exit'!"
        puts " "
        menu
    end

    def print_guardians
       Character.all.each_with_index do |guardian, index|
            puts "#{index + 1}. #{guardian.name}"
       end
        puts " "
        puts " "
        puts "To learn more, enter the name of the Guardian!"
        input = gets.strip.downcase
        select_guardian(input)
    end

    def select_guardian(guardian)
       char = Character.find_by_name(guardian)
       char.each do |c|
       puts " "
       puts "Name: #{c.name}."
       puts " "
       puts "Job: #{c.job}."
       puts " "
       puts "Description: #{c.description}."
       end
       puts "To see the list again, enter 'y', or enter 'exit'!"
       menu
    end
end

