module ApplicationHelper

  def page_title(kontroller = controller_name, aktion = action_name)
    t("#{kontroller}.#{aktion}.page_title")
  end

  def tagline(kontroller = controller_name, aktion = action_name)
    t("#{kontroller}.#{aktion}.tagline", :default => "")
  end

  def bootstrap_button(content, path, klass, small = false, *args)
    options = args.extract_options!
    small = small ? "" : "small "
    options[:class] = "btn #{small}#{klass}"
    link_to content, path, options
  end

  def edit_button(content, path)
    bootstrap_button content, path, :primary
  end

end
