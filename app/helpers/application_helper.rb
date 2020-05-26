module ApplicationHelper
  def title(text)
    content_for :title, text
    text
  end

  def current_action?(cls, action = nil)
    return false unless controller.is_a? cls
    if action
      controller.action_name == action.to_s
    else
      true
    end
  end
end
