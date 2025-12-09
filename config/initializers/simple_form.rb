SimpleForm.setup do |config|
  # Wrappers configuration

  # Wrappers are used by the form builder to generate a
  # complete input. You can remove any component from the
  # wrapper, change the order or even add your own to the
  # stack. The options given below are used to wrap the
  # whole input.
  config.wrappers :default, class: "form__group" do |b|
    # Determines whether to use HTML5 (:email, :url, ...)
    # and required attributes
    b.use :html5

    # Calculates placeholders automatically from I18n
    # You can also pass a string as f.input placeholder: "Placeholder"
    b.use :placeholder

    ## Inputs
    # b.use :label_input
    b.use :label, class: "visually-hidden"
    b.use :input, class: "form__input", error_class: "form__input--invalid"
  end


  # Default configuration

  # You can define which elements should obtain additional classes
  # config.generate_additional_classes_for = [:wrapper, :label, :input]
  config.generate_additional_classes_for = []

  # The default wrapper to be used by the FormBuilder.
  config.default_wrapper = :default

  # Default class for buttons
  config.button_class = "btn"

  # How the label text should be generated altogether with the required text.
  # config.label_text = lambda { |label, required, explicit_label| "#{required} #{label}" }
  config.label_text = lambda { |label, _, _| label }

  # Default tag used for error notification helper.
  config.error_notification_tag = :div

  # CSS class to add for error notification helper.
  config.error_notification_class = "error_notification"

  # Tell browsers whether to use the native HTML5 validations (novalidate form option).
  # These validations are enabled in SimpleForm's internal config but disabled by default
  # in this configuration, which is recommended due to some quirks from different browsers.
  # To stop SimpleForm from generating the novalidate option, enabling the HTML5 validations,
  # change this configuration to true.
  config.browser_validations = false

  # Define the way to render check boxes / radio buttons with labels.
  # Defaults to :nested for bootstrap config.
  #   inline: input + label
  #   nested: label > input
  config.boolean_style = :nested

  # Define the default class of the input wrapper of the boolean input.
  config.boolean_label_class = "form__checkbox-label"
end
