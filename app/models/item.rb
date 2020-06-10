class Item < ApplicationRecord
  belongs_to :category
  has_many :comments

  include ActiveModel::Validations
  validates_with SlugValidator

  def to_param
    slug
  end
end
