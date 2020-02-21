class Doctor
  attr_accessor :name, :appointment
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def appointments
    Appointment.all.each do |appointment|
      appointment.doctor == self
    end 
  end  
  
  def new_appointment(date, patient)
    appointment = Appointment.new(date, self, patient)
  end
    
  def patients
    Appointment.all.map do |appointment|
      appointment.patient 
    end
  end  
  
  def self.all
    @@all
  end

end  