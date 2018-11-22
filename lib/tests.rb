require 'pry'

class Person  
    
    @@counter = 0

    # Getter
    def first_name
        @first_name  # Instance Variable
    end

    # Setter
    def first_name=(value)
        @first_name = value  # Instance Variable
    end

    def full_name
        # self.first_name -> @@counter == 1
        # @first_name -> @@counter == 0
    end


    def 

end

claire = Person.new

claire.first_name

binding.pry
0