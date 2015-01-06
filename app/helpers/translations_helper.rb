module TranslationsHelper
  def attribute_name_for(resource_class, attribute)
    resource_class.human_attribute_name attribute
  end
end
