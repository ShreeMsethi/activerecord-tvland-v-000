class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  
  def say_that_thing_you_say
    "self#{always says:}"
  end
  
  def catchphrase=( t = " ")
    self.say_that_thing_you_say.t
  end

end