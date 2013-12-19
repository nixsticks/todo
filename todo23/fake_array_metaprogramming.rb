class FakeArray
  def initialize(*args)
    args.each do |arg|
      instance_variable_set("@v#{arg}", arg)
      self.class.send(:attr_accessor, "v#{arg}".to_sym)
    end
  end

  def each(&block)
    instance_variables.each {|variable| yield(get(variable))}
  end

  def first
    get(instance_variables.first)
  end

  def [](i)
    get(instance_variables[i])
  end

  def get(variable)
    instance_variable_get(variable)
  end
end