class MetaController < ApplicationController
  def error
    @status_code = params.fetch(:code, 404).to_i
    case @status_code
    when 404
      @text = 'Page not found'
    else
      @text = 'Unknown error'
    end
    render layout: 'layouts/card'
  end
end
