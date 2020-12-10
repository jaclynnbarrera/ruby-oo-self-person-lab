# your code goes here

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    
    def initialize(name_arg)
        @name = name_arg
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 

    def happiness
        if @happiness <  0
            @happiness = 0
        elsif @happiness > 10
            @happiness = 10 
        else 
            @happiness
        end 
    end 

    def hygiene
        if @hygiene <  0
            @hygiene = 0
        elsif @hygiene > 10
            @hygiene = 10 
        else 
            @hygiene
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

    def get_paid(salary)
        @bank_account += salary
        return 'all about the benjamins'
    end 

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.hygiene -= 3
        self.happiness += 2
            if @happiness > 10
                @happiness = 10
            end 
        "♪ another one bites the dust ♫"   
    end 

    def call_friend(friend)
        self.happiness += 3 
        friend.happiness += 3 
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation (friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        end 

        if topic == "weather"
            self.happiness += 1
            friend.happiness += 1 
            return "blah blah sun blah rain"
        end 

        if topic != "weather" or "politics"
            return "blah blah blah blah blah"
        end 
    end 
end


# - **attr_reader gives a getter method
# - **attr_writer sets up a setter method
# - **attr_accessor ives us both a getter and a setter