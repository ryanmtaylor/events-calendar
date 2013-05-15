module AdminHelper
  class AdminFormBuilder < SimpleForm::FormBuilder
    def input(attribute_name, opts ={}, &block)
      super
    end
  end
  class CurrencyInput < SimpleForm::Inputs::Base
    def input
      "$ #{@builder.text_field(attribute_name, input_html_options)}".html_safe
    end
  end
end