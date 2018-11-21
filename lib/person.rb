require 'pry'

class Person

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def name
        @name
    end

    def bank_account
        @bank_account
    end

    def hygiene
        @hygiene
    end

    def happiness
        @happiness
    end

    def bank_account=(amount)
        @bank_account += amount
    end

    def happiness=(happiness_value)
        if happiness_value > 10
            @happiness = 10
        elsif happiness_value < 0
            @happiness = 0 
        else
            @happiness = happiness_value
        end
    end

    def hygiene=(hygiene_value)
        if hygiene_value > 10
            @hygiene = 10
        elsif hygiene_value < 0
            @hygiene = 0 
        else
            @hygiene = hygiene_value
        end
    end

    def happy?
        if @happiness > 7
            true 
        else 
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid (salary)
        @bank_account += salary
        "all about the benjamins"
    end


    def take_bath
        @hygiene +=4
        self.hygiene=(@hygiene)  #self is needed for setters within this class
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        @hygiene -= 3
        self.hygiene=(@hygiene)
        @happiness += 2
        self.happiness=(@happiness)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        @happiness += 3
        self.happiness=(@happiness)
        
        friend.happiness += 3
        friend.happiness

        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (friend, topic)
        if topic.include?("politics")
            friend.happiness -= 2  #test asks for caller as the argument, but why does this test pass for the friend happiness -2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic.include?("weather")
            friend.happiness += 1 
            friend.happiness  #checks condition
            self.happiness += 1
            self.happiness # checks condition
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
        
    end

end


