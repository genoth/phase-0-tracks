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
      @locations[new_location] = []
    end
  end

  def add_task(new_task, location)
    if @locations.include?(location) && @locations[location].include?(new_task)
      puts "The task #{new_task} is already on the list for the location #{location}"
    elsif @locations.include?(location)
      @locations[location] << new_task
    else
      @locations[location] = [new_task]
    end
  end

  def complete_task(task, location)
    if @locations[location].include?(task) == false
      puts "It's not on the list for this location."
    else
      @locations[location].delete(task)
      puts "You finished the task #{task}! Good job. Here is the rest of your list- #{@locations}"
    end
  end

end

first_list = Task_list.new("Friday", "Geoffrey")
first_list.add_location("Walgreens")

first_list.add_task("pick up groceries", "Marianos")
p first_list

first_list.add_task("get RX", "Walgreens")
first_list.add_task("buy vitamin water", "Walgreens")
first_list.add_task("buy flowers", "Marianos")

first_list.add_task("pick up groceries", "Marianos")
p first_list

first_list.complete_task("buy flowers", "Marianos")



  # attribute is kind of like a public version of an instance variable
   # the storage mechanism for saving the value of an attribute is by storing it as an instance variable