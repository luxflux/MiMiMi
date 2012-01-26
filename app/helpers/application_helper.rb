module ApplicationHelper

  def page_title(kontroller = controller_name, aktion = action_name)
    t("#{kontroller}.#{aktion}.page_title")
  end

  def tagline(kontroller = controller_name, aktion = action_name)
    t("#{kontroller}.#{aktion}.tagline", :default => "")
  end

end
