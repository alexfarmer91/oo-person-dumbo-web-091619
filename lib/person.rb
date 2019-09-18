class Person 
  
    attr_reader :name
    attr_writer
    attr_accessor :bank_account, :happiness
    
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
  
  def decriment_happiness
      @happiness -= 1
      if @happiness <= 0
        @happiness = 0 
    end 
  end 

    def incriment_hygiene
      @hygiene += 1
      if @hygiene >= 10 
        @hygiene = 10 
    end 
  end 
  
  def decriment_hygiene
      @hygiene -= 1
      if @hygiene <= 0
        @hygiene = 0 
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
        2.times do self.incriment_happiness
      end 


        #decriment hygiene by 3
        3.times do self.decriment_hygiene
      end 

     return "♪ another one bites the dust ♫"
    end 



   def call_friend(friend) 

    3.times do self.incriment_happiness
  end 
    3.times do friend.incriment_happiness
  end 

     return "Hi, #{friend.name}! It's #{self.name}. How are you?"
   end 


   def start_conversation(friend, topic)

    case topic 

    when "politics"
       friend.decriment_happiness
       self.decriment_happiness
        return "blah blah partisan blah lobbyist"
    when "weather"
        friend.incriment_happiness
        self.incriment_happiness

        return "blah blah sun blah rain"
    else 
      return "blah blah blah blah blah"

    end 



   end 


    
  end 