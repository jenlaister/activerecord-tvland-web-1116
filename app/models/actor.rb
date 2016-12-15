class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
   "#{Character.pluck(:name).first} - #{Show.pluck(:name).first}"
end

end
