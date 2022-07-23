require 'pry'
class Person
attr_reader :name
attr_accessor :bank_account,:happiness,:hygiene

def initialize(name,bank_account = 25, happiness = 8,hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
end

def happiness=(score)
    @happiness = score > 10 ? 10 : score < 0 ? 0 : score
end

def hygiene=(score)
   @hygiene = score > 10 ? 10 : score < 0 ? 0 : score
end

def happy?
    @happiness > 7 ? true : false
end

def clean?
    @hygiene > 7 ? true : false
end

def get_paid(amount)
  @bank_account += amount
  return "all about the benjamins"
end

def take_bath
  self.hygiene += 4
  return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
end

def call_friend(name)
self.happiness += 3
name.happiness += 3
return "Hi #{name.name || self.name}! It's #{self.name || name.name}. How are you?"
end

def start_conversation(name,topic)
   if topic == "politics"  
        name.happiness -= 2
        self.happiness -= 2
        "blah blah partisan blah lobbyist" 
    elsif topic == "weather"
        name.happiness += 1
        self.happiness += 1
       "blah blah sun blah rain"
    
else "blah blah blah blah blah"
end
end
end


