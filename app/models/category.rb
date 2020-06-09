class Category < ApplicationRecord
  has_many :items

  include ActiveModel::Validations
  validates_with SlugValidator
end
