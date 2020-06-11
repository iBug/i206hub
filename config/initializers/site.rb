Rails.application.configure do
  config.site = YAML.load_file 'config/site.yml'
end
