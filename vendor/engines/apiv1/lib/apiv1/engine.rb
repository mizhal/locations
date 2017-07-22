module Apiv1
  class Engine < ::Rails::Engine
    isolate_namespace Apiv1
    config.generators.api_only = true
  end
end
