module I206hub
  class Application
    config.site = YAML.load_file 'config/site.yml'
  end
end
