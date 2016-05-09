#Extend simple key => string Hash to output nicely formated json for SQL output
class Hash
  def to_j
    s = "{\n"
      self.each { |k,v| s += "  \"#{k}\": #{v.to_j},\n" }
    s[-2] = "\n"
    s[-1] = "}"
    return s
  end 
end
