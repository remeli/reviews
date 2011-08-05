module ApplicationHelper
  # output error messages
  def error_messages_for(object)
    render(:partial => "shared/error_messages", :locals => {:object => object})
  end
  
  # flash messages
  def flash_notice(object)
    render(:partial => "shared/notice", :locals => { :notice => object })
  end
end
