class Item < ApplicationRecord
  validates :slug, presence: true, length: { maximum: 64 }, uniqueness: true,
    format: { with: %r!\A(?!\d+\z)\w+(?:-\w+)*!, message: :invalid_slug }
end
