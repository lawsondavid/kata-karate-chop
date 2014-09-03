class KarateChop 
  def chop(int, array_of_ints)
    return inner_chop(0, int, array_of_ints)
  end
  
  def inner_chop(offset, int, array_of_ints)
    return -1 if(array_of_ints.empty?)
    ints_size = array_of_ints.size
    half_way_index = ints_size/2

    if(array_of_ints[half_way_index] == int)
	  return half_way_index + offset
    elsif(int < array_of_ints[half_way_index])
      return inner_chop(offset, int, array_of_ints[0, half_way_index])
    else
      return inner_chop(offset + half_way_index + 1, int, array_of_ints[half_way_index + 1, ints_size])	
    end  
  end 
end
