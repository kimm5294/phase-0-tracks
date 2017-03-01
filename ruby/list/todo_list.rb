class TodoList
  attr_accessor :array

  def initialize(array) 
    @array = array
  end

  def get_items
    return @array
  end 

  def add_item(string)
    @array.push(string)
    return @array
  end 

  def delete_item(string)
    @array.delete(string)
    return @array
  end

  def get_item(index)
    return @array[index]
  end 
end 