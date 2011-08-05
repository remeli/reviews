module ApplicationHelper
  #base title
  def title
    base_title = "Reviews.kz"
    if @title
      base_title + " / " + @title
    else
      base_title
    end
  end

  # output error messages
  def error_messages_for(object)
    render(:partial => "shared/error_messages", :locals => {:object => object})
  end
  
  # flash messages
  def flash_notice(object)
    render(:partial => "shared/notice", :locals => { :notice => object })
  end
  
  # cancel submit form
  def submit_or_cancel(form, submit_name="Отправить", cancel_name="Отмена")
    form.submit(submit_name) + " или " +
    link_to(cancel_name, "javascript:history.go(-1)", :class => "cancel")
  end
end
