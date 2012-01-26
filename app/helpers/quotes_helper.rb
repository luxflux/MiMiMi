module QuotesHelper

  def page_title(kontroller = controller_name, aktion = action_name)
    t("#{kontroller}.#{aktion}.page_title", :value => @person.name)
  end

end
