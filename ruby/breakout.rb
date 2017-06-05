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
      puts "You finished the task #{task}! Good job."
    end
  end

  def print_list()
    puts "#{@owner}, here is your to-do list, due #{due_date}:"
    @locations.each do |location, task|
      puts "At #{location}:"
      task.each do |task|
        puts "-#{task}"
      end
    end
  end

  def is_past_due?
    days_of_week = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
    if @locations != {} && days_of_week.index(Time.now.strftime("%A")) > days_of_week.index(@due_date)
      puts "The list is past due!"
    end
  end

end

# Driver code
first_list = Task_list.new("Friday", "Geoffrey")
first_list.add_location("Walgreens")
first_list.add_task("pick up groceries", "Marianos")
first_list.add_task("get RX", "Walgreens")
first_list.add_task("buy vitamin water", "Walgreens")
first_list.add_task("buy flowers", "Marianos")
first_list.add_task("pick up groceries", "Marianos")
first_list.complete_task("buy flowers", "Marianos")
first_list.print_list()
another_list = Task_list.new("Monday", "Geoffrey")
another_list.is_past_due?

  # attribute is kind of like a public version of an instance variable
  # the storage mechanism for saving the value of an attribute is by storing it as an instance variable