class Category < ApplicationRecord
  has_many :items

  include ActiveModel::Validations
  validates_with SlugValidator

  def to_param
    slug
  end
end
