class KarateChop 

  def chop(int, array_of_ints)
    return -1 if array_of_ints.empty?
    lower, upper = 0, array_of_ints.size - 1
    while (lower <=  upper)
      mid = upper + lower / 2
      if(int > array_of_ints[mid])
        lower = mid + 1
      elsif (int < array_of_ints[mid])
        upper = mid - 1
      else
        return mid
      end
    end
    return -1
  end

end