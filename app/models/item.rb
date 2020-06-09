class Item < ApplicationRecord
  belongs_to :category

  include ActiveModel::Validations
  validates_with SlugValidator
end
