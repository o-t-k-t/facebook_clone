module FeedsHelper
  def form_submit_path
    case action_name
    when 'new', 'confirm'
      confirm_feeds_path
    when 'edit', 'update', 'create'
      feeds_path
    else
      raise "called by unexpected controller #{action_name}"
    end
  end
end
