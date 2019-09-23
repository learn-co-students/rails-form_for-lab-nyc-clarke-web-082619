class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  belongs_to :school_class
end