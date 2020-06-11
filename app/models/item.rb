class PostScrubber < Rails::Html::PermitScrubber
  def initialize
    super
    self.tags = %w[
      a b blockquote br code del details dd div dl dt em h1 h2 h3 h4 h5 h6 hr i img kbd
      li mark ol p pre s sp span sup sub strong strike summary ul
    ]
    self.attributes = %w[href title src height width alt]
  end

  def skip_node?(node)
    node.text?
  end
end

class Item < ApplicationRecord
  belongs_to :category
  has_many :comments

  include ActiveModel::Validations
  validates_with SlugValidator

  before_save :render_description

  def to_param
    slug
  end

  def render_description
    self.html = ActionController::Base.helpers.sanitize(CommonMarker.render_html(self.description, %i[UNSAFE], %i[table strikethrough autolink tagfilter]), scrubber: PostScrubber.new)
  end
end
