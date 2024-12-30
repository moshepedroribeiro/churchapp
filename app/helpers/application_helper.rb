module ApplicationHelper
  def bootstrap_flash(safe: false)
    capture do
      error_types = %i[alert error]

      flash.each do |type, message|
        next if message.blank?

        type = type.to_sym
        type = :success if type == :notice
        type = :danger  if error_types.include?(type)
        next unless ALERT_TYPES.include?(type)

        Array(message).compact.each do |msg|
          alert = content_tag(:div, class: "alert alert-#{type} alert-dismissible fade show mt-2", role: 'alert', data: { turbo_temporary: true }) do
            capture do
              concat safe ? msg.html_safe : msg # rubocop:disable Rails/OutputSafety
              concat content_tag(:button, nil, class: 'btn-close', type: :button, data: { bs_dismiss: 'alert' },
                                 aria: { hidden: true })
            end
          end

          concat alert
        end
      end
    end
  end

  def base_errors_tag(model)
    return if model.errors[:base].none?

    content_tag :div, model.errors[:base].to_sentence, class: 'alert alert-danger'
  end
end
