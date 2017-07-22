module Apiv1
  class ParamMissing < Exception
    def message
      "Parameter #{super} is missing"    
    end
  end
end
