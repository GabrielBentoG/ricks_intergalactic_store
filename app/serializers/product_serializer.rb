class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :categories
  
  attribute :categories do
    object.categories.pluck(:name)
  end
end
