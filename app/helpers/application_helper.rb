module ApplicationHelper

  def page_title(value = nil, kontroller = controller_name, aktion = action_name)
    @page_title = t("#{kontroller}.#{aktion}.page_title", :value => value)
    return @page_title
  end

  def render_title
    @page_title ? @page_title : page_title
  end

  def tagline(kontroller = controller_name, aktion = action_name)
    t("#{kontroller}.#{aktion}.tagline", :default => "")
  end

  def bootstrap_button(content, path, klass, *args)
    options = args.extract_options!
    small = options.delete(:small) ? "small " : ""
    options[:class] = "btn #{small}#{klass}"
    link_to content, path, options
  end

  def new_button(content, path)
    bootstrap_button content, path, :primary
  end

  def delete_to_modal(content, model)
    bootstrap_button content, '#', "danger delete_#{model.class.to_s}", "data-id" => model.id, "data-controls-modal" => "delete-confirm-#{model.id}"
  end

  def delete_button(content, path)
    bootstrap_button content, path, :danger, :method => :delete
  end

  def nav_entry(content, path)
    content_tag(:li, :class => (current_page?(path) ? "active" : "")) do
      link_to content, path
    end
  end
end
