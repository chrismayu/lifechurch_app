class HourInput < SimpleForm::Inputs::Base
  def input
    @builder.select(attribute_name, hour_options, { :selected => selected_value }, { :class => "input-medium" })
  end

  private

  # The "Selecione..." string could also be translated with something like: I18n.t("helpers.select.prompt')
  def hour_options
    hour = [['Select one...', '00:00:00']]
    (7..20).each do |h|
      %w(00 30).each do |m|
        hour.push ["#{h}h #{m}", "#{"%02d" % h}:#{m}:00"]
      end
    end
    hour
  end

  def selected_value
    value = object.send(attribute_name)
    value && value.strftime("%H:%M:%S")
  end
end