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
      # check if task already exists at that location
      # if not, puts
      @locations[location] << [new_task]
    else # if it's a totally new place...
      @locations[location] = [new_task]
    end
  end

end

first_list = Task_list.new("Friday", "Geoffrey")
first_list.add_location("Walgreens")

first_list.add_task("pick up groceries", "Marianos")
p first_list

first_list.add_task("pick up groceries", "Walgreens")
first_list.add_task("buy flowers", "Marianos")

first_list.add_task("pick up groceries", "Marianos")
p first_list



  # attribute is kind of like a public version of an instance variable
   # the storage mechanism for saving the value of an attribute is by storing it as an instance variable