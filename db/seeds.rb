# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "cadastrando as CATEGORIAS..."
categories = [  'Animais e acessorios',
                'Esportes',
                'Para a sua casa',
                'Eletrônicos e celulares',
                'Musica e hobbies',
                'Bebês e crianças',
                'Moda e Beleza',
                'Veiculos e barcos',
                'Imóveis',
                'Empregos e negocios'
]
# Criando as categorias
categories.each do |category|
    # find_or_create_by não deixa criar categorias repetidas, ele busca a categoria antes de criar.
    Category.find_or_create_by(description: category)
end
puts "Categorias cadastradas com sucesso"