Rails.application.config do |config|
  config.generators do |g|
    g.system_tests = nil
    g.test_framework = nil
    g.jbuilder = false
    g.stylesheets = false
    g.javascripts = false
  end
end
