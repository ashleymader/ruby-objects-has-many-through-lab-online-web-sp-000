require 'pry'

class Doctor 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end 
  
  def appointments
    Appointment.all.select {|appt| appt.doctor ==self}
  end 
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
    
  def patients 
    appointments.collect {|appt| appt.patient}
<<<<<<< HEAD
=======
    binding.pry
>>>>>>> 14d838b5201b8e44e1c5e078f40bada573266ccd
  end
end