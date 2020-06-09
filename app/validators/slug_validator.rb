class SlugValidator < ActiveModel::Validator
  RESERVED_WORDS = %w[
    admin user users login logout
    new edit show delete
    api search feed.xml
    category categories item items review reviews comment comments
  ]
  private_constant :RESERVED_WORDS

  def validate(record)
    slug = record.slug
    unless slug =~ %r{\A(?!\d+\z)(?![._-]+\z)[\w.]+*}
      record.errors.add(:slug, "Invalid slug")
    end
    if RESERVED_WORDS.include? slug
      record.errors.add(:slug, "This name is reserved")
    end
  end
end
