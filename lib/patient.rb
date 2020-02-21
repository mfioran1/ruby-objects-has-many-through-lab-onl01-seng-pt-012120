require 'pry'
class Patient
  attr_accessor :name, :doctor
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
  
  def appointments
    Appointment.all.each do |appointment|
      binding.pry
      appointment.patient == self
    end
  end
  
  def doctors
    Appointment.all.map do |appointment|
      appointment.doctor
    end
  end  
  
  def self.all
    @@all
  end
  
end  