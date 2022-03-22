class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    # returns a list of roles for the actor using the character name and show name
    
    self.characters.map do |character|
        "#{characters.name} - #{characters.show.name}"
    end
  end
end