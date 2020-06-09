module ConfigHelper
  def site_name
    config.site_name
  end

  private

  def self.config
    Rails.application.config
  end
end
