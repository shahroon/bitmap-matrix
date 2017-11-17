class InvalidCoordinates
  def filter_args(*args)
  	vals = args.flatten.reject {|val| letter?(val)}
    check_coords(vals)
  end 

  def check_coords(vals)
    vals.select {|val| within_range?(val) }
  end  

  def letter?(lookAhead)
    lookAhead =~ /[[:alpha:]]/
  end 

  def within_range?(val)
    val.to_i > 250 || val.to_i < 1
  end  
end

