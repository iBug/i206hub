class SlugValidator < ActiveModel::Validator
  RESERVED_WORDS = %w[
    admin user login logout
    category categories item items review reviews comment comments
  ]
  private_constant :RESERVED_WORDS

  def validate(record)
    slug = record.slug
    unless slug =~ %r{\A(?!\d+\z)[\w.]+(?:-[\w.]+)*}
      record.errors.add(:slug, "Invalid slug")
    end
    if RESERVED_WORDS.include? slug
      record.errors.add(:slug, "This name is reserved")
    end
  end
end
