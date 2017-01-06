class ImplicitBegin

  def some method
    a = 5
    b = 0
    a / b
  rescue
    a
  end
end