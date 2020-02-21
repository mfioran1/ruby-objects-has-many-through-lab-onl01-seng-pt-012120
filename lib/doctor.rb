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
  
  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
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