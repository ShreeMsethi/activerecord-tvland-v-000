class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  
  def catchphrase=(say_that_thing_you_say)
    self.say_that_thing_you_say
  end
end