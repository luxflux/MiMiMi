class FlashResponder < ActionController::Responder
  def to_html
    unless get? || options.delete(:flash) == false
      namespace = controller.controller_path.split('/')
      namespace << controller.action_name
      namespace << :flash
      state =  has_errors? ? :error : :success
      namespace << state
      request.flash[namespace.last] = I18n.t(namespace.join("."), :default => I18n.t("flash.actions.#{controller.action_name}.#{state}"), :resource => resource.class.model_name.human)
    end
    super
  end
end

