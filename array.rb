#Extend Array to output nicely formated json.
class Array
  def to_j
    s = "[\n"
    (0...(length-1)).each { |i| s += (to_j_body(i) + ",\n") }
    s += to_j_body(-1) if length > 0
    s + ']'
  end 

  private
  def to_j_body(i)
    #puts "#{self[i].class} = #{self[i].is_a?(Table_base)}"
    if self[i].class == Array || self[i].class == Hash || self[i] == nil || self[i].is_a?(Numeric) || self[i].is_a?(String)
      self[i].to_j
    else
      self[i].to_s.to_j
    end
  end
end
