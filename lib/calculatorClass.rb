class Calculator

  @result = 0;
  
  def add(value1, value2)
    @result = value1.to_i + value2.to_i
  end

  def result
    @result.to_i
  end

end

