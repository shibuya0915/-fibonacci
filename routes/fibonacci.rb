class Fibonacci

  def initialize
    @result = {}
  end


  def fib(num)
    num = num.to_i

    if @result.has_key?(num) #ハッシュにあるか確認
      @result[num]
    elsif num == 0
      0
    elsif num == 1
      1
    else
      @result[num] = fib(num - 1) + fib(num - 2)
    end
  end
end