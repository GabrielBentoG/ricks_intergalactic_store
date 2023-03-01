namespace :dev do
  desc "TODO"
  task setup: :environment do
    
    puts "Criando categorias"

    5.times do |i|
      Category.create!(
        name: Faker::Commerce.department(max: 1)
      )
    end

    puts "Categorias criadas como sucesso!"
    puts "================================"
    puts "Criando produtos..."
    15.times do |i|
      Product.create!(
        name: Faker::Commerce.product_name,
        price: Faker::Commerce.price,
        categories: Category.all.sample(2)
      )
    end
    puts "Produtos criados com sucesso..."
  end
end
