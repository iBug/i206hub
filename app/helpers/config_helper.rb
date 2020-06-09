module ConfigHelper
  def site_name
    config['name'] || 'default'
  end

  def site_lang
    config['lang'] || 'en'
  end

  private

  def config
    Rails.application.config.site
  end
end
