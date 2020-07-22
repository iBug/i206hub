Rails.application.configure do
  if File.file? 'config/site.yml'
    config.site = YAML.load_file 'config/site.yml'
  else
    config.site = YAML.load_file 'config/site.example.yml'
  end
end
