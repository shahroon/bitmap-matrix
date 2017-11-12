class InvalidCoordinates < StandardError
  def initialize(msg='Please check coordinates')
    super(msg)
  end

  def filter_args(*args)
  	vals = args.flatten.select {|val| numeric?(val)}
    puts vals
    check_coords(vals)
  end 

  def check_coords(vals)
    #puts vals
    #vals.select {|invalid| invalid?(val) }
    #) then (val.to_i > 250 || val.to_i < 1) end
  end  

  def numeric?(lookAhead)
    lookAhead =~ /[[:digit:]]/
  end 	

  def invalid?(val)
    val == true
  end  
end

