class ProductCategorySerializer < ActiveModel::Serializer
  attributes :id
  has_one :product
  has_one :category

  link(:self) { product_category_url(object.id) }
end
