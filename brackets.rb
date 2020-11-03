class String
  def valid?(brackets)
    brack = brackets.chars('')
    hash = {"{" => "}", "[" => "]", "(" => ")", "<" => ">"}
    if brack.size.even?
      while brack.size != 0
        if hash[brack.shift].eql? brack.pop
          return true
        else
          return false
        end
      end
    else
      false
    end
  end
end

ar = String.new
p ar.valid?("{()}")
p ar.valid?("()<>()<")
p ar.valid?("(<}>)")
#p "{()}".valid?
#p "(<)({)".valid?
