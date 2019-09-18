class Person 
  
    attr_reader :name
    attr_writer
    attr_accessor :bank_account
    
    def initialize(name)
      @name = name 
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end 
    
    def incriment_happiness
      @happiness += 1
      if @happiness >= 10 
        @happiness = 10 
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
      @bank_account += salary 
      return "all about the benjamins"
    end 

    def take_bath

     if @hygiene >= 7
        @hygiene = 10
     else 
        @hygiene += 4
     end 

      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    

    def work_out 

        #incriment happiness by 2
        if @happiness >= 9
            @happiness = 10
         else 
            @happiness += 2
         end 


        #decriment hygiene by 3
        if @hygiene <= 2
            @hygiene = 0
         else 
            @hygiene -= 3
         end 

     return "♪ another one bites the dust ♫"
    end 


   def call_friend(friend) 

    self.happiness += 3
    friend.happiness += 3

     return "Hi, #{friend.name}! It's #{self.name}. How are you?"
   end 


   def start_conversation(friend, topic)

    case topic 

    when "politics"
       friend.happiness -= 1
       self.happiness -= 1
        return "blah blah partisan blah lobbyist"
    when "weather"
        friend.happiness += 1
        self.happiness += 1

        return "blah blah sun blah rain"
    else 
      return "blah blah blah blah blah"

    end 



   end 


    
  end 