class FibonocciRecursive

  def fib(n,print_val=true)
    if n.to_i === 1       # Hard-code output for 1
      print_so_far("0", print_val)
    elsif n.to_i === 2    # Hard-code output for 2
      print_so_far("0,1", print_val)
    elsif n.to_i > 2      # Figure out everything else
      val = fib(n-1,false)
      new_val = return_next_integer_in_sequence(val)
      print_so_far("#{val},#{new_val.to_i}", print_val)
    else  # Handle invalid input
      print "Invalid input. Use positive, nonzero integer."
    end
  end

  private

  # either prints the output or just returns the value.
  def print_so_far(val,print_val)
    if(print_val === true)
      puts val
    end
    val
  end

  # takes a comma separated string, converts it to an array, grabs the last two elements, and sums them
  def return_next_integer_in_sequence(val)
    new_val = 0
    if ! val.nil?                       # avoid nil variable
      arr = val.split(',').collect! {|n| n.to_i}   # convert comma separated string to array
      if arr.length >= 2
        last_two = arr.pop(2)           # get the last two array elements
        new_val = last_two.inject(:+)   # sum them
      elsif arr.length === 1            # just in case
        new_val arr[0].to_i
      end
    end
    new_val
  end
end


f = FibonocciRecursive.new
(1..20).each do |i|
  f.fib(i)
end