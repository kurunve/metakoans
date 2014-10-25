class Module
    def attribute a
       eval "define_method :#{a} do @#{a}; end"
       eval "define_method :#{a}= do |param| @#{a}=param; end"
       eval "define_method :#{a}? do defined? @#{a}; end"

       #instance_eval "def #{a}; @#{a}; end"
       #instance_eval "def #{a}= param; @#{a} = param; end"
       #instance_eval "def #{a}?; @#{a}.nil?; end"
    end
end
