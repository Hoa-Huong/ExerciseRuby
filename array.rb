class ex_array
  def sochiahet a, b
    arr = (a..b).select {|x| x%3==0}
  end
end
