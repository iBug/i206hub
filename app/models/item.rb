class Item < ApplicationRecord
  belongs_to :category

  include ActiveModel::Validations
  validates_with SlugValidator

  def to_param
    slug
  end
end
