class Task_list
  attr_accessor :due_date
  attr_reader :owner

  def initialize(due_date, owner)
    @due_date = due_date
    @owner = owner
    @locations = {}
  end

  def add_location(new_location)
    if @locations.include?(new_location)
      puts "#{new_location} is already on the list."
    else
      @locations[new_location] = ""
    end
  end
end

first_list = Task_list.new("Friday", "Geoffrey")
first_list.add_location("Walgreens")
p first_list



  # attribute is kind of like a public version of an instance variable
   # the storage mechanism for saving the value of an attribute is by storing it as an instance variable