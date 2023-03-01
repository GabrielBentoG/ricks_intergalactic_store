class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name

  link(:self) { category_url(object.id) }

end
