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

    def bank_account=(amount)
        @bank_account = amount
    end

    def happiness
        @happiness
    end

    def happiness=(index)
        if index > 10
            @happiness = 10
        elsif index < 0
            @happiness = 0
        else
            @happiness = index
        end
    end

    def hygiene
        @hygiene
    end

    def hygiene=(index)
        if index > 10
            @hygiene = 10
        elsif index < 0
            @hygiene = 0
        else
            @hygiene = index
        end
    end


    def clean? 
        if @hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account = bank_account + salary
        "all about the benjamins"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def take_bath
        self.hygiene += 4 
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def call_friend(name)
        self.happiness += 3
       #binding.pry
        name.happiness += 3
        name.happiness

        "Hi #{name.name}! It's #{self.name}. How are you?"

    end

    def start_conversation(caller, topic)
        if topic == "politics"
            self.happiness -= 2
            caller.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            caller.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end