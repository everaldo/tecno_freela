module ShowAttributesHelper
  def show_attributes(resource, *attributes)
    render partial: 'show_attributes', locals: {resource: resource, attributes: attributes}
  end

  def show_attribute(resource, attribute)
    render partial: 'show_attribute', locals: {resource: resource, attribute: attribute}
  end
end

