class Item < ApplicationRecord
  include ActiveModel::Validations
  validates_with SlugValidator
end
