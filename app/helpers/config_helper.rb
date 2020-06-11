module ConfigHelper
  def site_name
    config['name'] || 'default'
  end

  def site_lang
    config['lang'] || 'en'
  end

  def git_rev
    Rails.application.config.git_revision
  end

  def git_rev_short
    Rails.application.config.git_revision_short
  end

  private

  def config
    Rails.application.config.site
  end
end
