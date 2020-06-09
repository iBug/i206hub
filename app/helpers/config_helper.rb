module ConfigHelper
  def site_name
    config['name']
  end

  private

  def config
    Rails.application.config.site
  end
end
