class Checker
  def differ_by_one(str1, str2)
    if str1.length != str2.length
      raise ArgumentError, 'strings are not equal in length' 
    end

    ar1 = str1.downcase.split('').sort()
    ar2 = str2.downcase.split('').sort()
  
    counter = 0
    differences = 0
  
    while counter < ar1.length && differences < 2
      if ar1[counter] != ar2[counter]
        differences += 1
      end
      counter += 1
    end
  
    if differences === 1 
      return true
    else
      return false
    end
  end
end

#puts Checker.new.differ_by_one('gTat xx63','tag  T2')