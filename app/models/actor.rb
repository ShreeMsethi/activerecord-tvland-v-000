class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    full_name = self.first_name + " " + self.last_name
  end
  
  def list_roles
    self.shows do |s|
      self.characters do |c|
        c.characters
      end
      c.characters - s.shows 
    end
  end

end