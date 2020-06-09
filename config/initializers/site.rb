Rails.application.configure do
  YAML.load_file('config/config.yml').each do |k, v|
    config.define_singleton_method k.to_sym do
      v
    end
  end
end
