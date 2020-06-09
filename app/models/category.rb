class Category < ApplicationRecord
  include ActiveModel::Validations
  validates_with SlugValidator
end
