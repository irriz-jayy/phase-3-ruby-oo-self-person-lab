class Person
    def initialize(name)
        @name = name
        @bank_account= 25
        @happiness = 8
        @hygiene= 8
    end

    attr_accessor :bank_account
    attr_reader :happiness, :name, :hygiene


  def happiness=(value)
    if value > 10
      @happiness = 10
    elsif value < 0
      @happiness = 0
    else
      @happiness = value
    end
  end

  def hygiene=(value)
    if value >10
        @hygiene = 10
    elsif value < 0
        @hygiene = 0
    else
        @hygiene = value
    end
  end
  
  def clean?
    hygiene > 7
  end

  def happy?
    happiness > 7
  end

  def get_paid(amount)
    self.bank_account += amount
    return "all about the benjamins"
end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    return  case topic
    when "politics"
      self.happiness = @happiness - 2
      friend.happiness = friend.happiness - 2
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness = @happiness + 1
      friend.happiness = friend.happiness + 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
end


end