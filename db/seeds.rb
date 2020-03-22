# Categories
puts "Criando Categorias"
ror = Category.create(name: 'Ruby On Rails')
 
talks = Category.create(name: 'Talks')
 
testes = Category.create(name: 'Testes')
 
outros = Category.create(name: 'Outros')
puts "Categorias criadas..."

puts "Criando featured movie"
# Featured Movie
movie1 = Movie.create(title: "Ruby On Rails Api do zero ao Deploy",
                      description: "Aprenda a criar uma API completa com Ruby On Rails...",
                      thumbnail_key: "1917.png",
                      thumbnail_cover_key:"1917_cover.png",
                      video_key: "movie1.mp4",
                      highlighted: true,
                      category: ror,
                      featured_thumbnail_key:"1917_featured.png")
puts "Featured movie criado..."

puts "Criando usuários"
# Users
user1 = User.create(name: 'example', email: 'example@example.com', password: '123456', password_confirmation: '123456')
user2 = User.create(name: 'example2', email: 'example2@example.com', password: '123456', password_confirmation: '123456')
user3 = User.create(name: 'example3', email: 'example3@example.com', password: '123456', password_confirmation: '123456')
user4 = User.create(name: 'example4', email: 'example4@example.com', password: '123456', password_confirmation: '123456')
user5 = User.create(name: 'example5', email: 'example5@example.com', password: '123456', password_confirmation: '123456')
puts "Usuarios criados..." 

puts "Criando filmes"
# Movies sem série
movie2 = Movie.create(title: "Dominando o Docker", 
                      description: "O Docker é um plataforma (aberta) que permite que você crie, rode e
                      faça deploy de containers. De maneira simples, um container é o
                      empacotamento da sua aplicação mais as dependências dela.",
                      thumbnail_key: "cats.png", 
                      thumbnail_cover_key: "cats_cover.png" ,
                      video_key: "movie2.mp4", 
                      category: outros)
                      
movie3 = Movie.create(title: "Dominando Atom [+12 pacotes Incríveis!",
                      description: "O Atom é um editor bastante completo,
                      cheio de temas e pacotes para facilitar a sua vida como
                      programador.", 
                      thumbnail_key: "foxtrot.png", 
                      thumbnail_cover_key: "foxtrot_cover.png",
                      video_key: "movie3.mp4",
                      category: outros)
                      
movie4 = Movie.create(title: "Criando um e-commerce com Spree em 15 minutos!",
                      description: "O Spree é uma plataforma de e-commerce criada
                      usando Ruby On Rails e vem evoluindo constantemente. Ela possui
                      diversas extensões que ajudam na customização do e-commerce gerado e
                      possui uma grande versatilidade na hora das customizações." ,
                      thumbnail_key: "parasyte.png",
                      thumbnail_cover_key: "parasyte_cover.png",
                      video_key: "movie4.mp4",
                      category: outros)
 

puts "Criando Series"
# Series
vscode = Serie.create(title: 'Visual Studio Code',
                      description: 'Uma série completa para você dominar um dos mais importantes editores de texto',
                      thumbnail_key: "pretoria.png",
                      thumbnail_cover_key: "pretoria_cover.png",
                      last_watched_episode_id: 1,
                      category: outros)

movie5 = Movie.create(title: "Dominando o Visual Studio Code - Parte 1",
                      description: "O Visual Studio Code é um editor de texto Open
                      Source completo que possui integração nativa com o Git, milhares de
                      extensões, é rápido e permite que você realize o debug facilmente do seu código.",
                      thumbnail_key: "sonic.png",
                      thumbnail_cover_key: "sonic_cover.png",
                      video_key: "movie5.mp4",
                      serie: vscode,
                      episode_number: 1)

movie6 = Movie.create(title: "Dominando o Visual Studio Code - Parte 2",
                      description: "O Visual Studio Code é um editor de texto Open
                      Source completo que possui integração nativa com o Git, milhares de
                      extensões, é rápido e permite que você realize o debug facilmente do seu código.",
                      thumbnail_key: "spenser.png",
                      thumbnail_cover_key: "spenser_cover.png",
                      video_key: "movie6.mp4",
                      serie: vscode,
                      episode_number: 2)

movie7 = Movie.create(title: "Dominando o Visual Studio Code - Parte 3",
                      description: "O Visual Studio Code é um editor de texto Open
                      Source completo que possui integração nativa com o Git, milhares de
                      extensões, é rápido e permite que você realize o debug facilmente do seu código.",
                      thumbnail_key: "star_wars.png",
                      thumbnail_cover_key: "star_wars_cover.png",
                      video_key: "movie7.mp4",
                      serie: vscode,
                      episode_number: 3)

puts "Criando players"
# Keep Wathching
Player.create(start_date: Time.now, user: user1, elapsed_time: '14', movie: movie1)
Player.create(start_date: Time.now, user: user1, elapsed_time: '14', movie: movie2)
Player.create(start_date: Time.now, user: user1, elapsed_time: '14', movie: movie3)
Player.create(start_date: Time.now, user: user1, elapsed_time: '14', movie: movie4)
Player.create(start_date: Time.now, user: user1, elapsed_time: '14', movie: movie5)
 
puts "Criando reviews"
# Reviews
Review.create(rating: 3, description: 'I have always depended on the kindness of strangers.', reviewable: movie2, user: user1)
Review.create(rating: 2, description: 'Help me, Obi-Wan Kenobi. Youre my only hope. ', reviewable: movie2, user: user2)
Review.create(rating: 5, description: 'Every time a bell rings, an angel gets his wings. ' , reviewable: movie2, user: user3)
Review.create(rating: 3, description: 'Magic Mirror on the wall, who is the fairest one of all?', reviewable: movie2, user: user4)
Review.create(rating: 5, description: 'Just when I thought I was out, they pull me back in.', reviewable: movie2, user: user5)
 
puts "Criando favoritos"
# Favorites
Favorite.create(favoritable: Movie.all[0], user: user1)
Favorite.create(favoritable: Movie.all[1], user: user1)
Favorite.create(favoritable: Movie.all[2], user: user1)
Favorite.create(favoritable: Movie.all[3], user: user1)
Favorite.create(favoritable: Movie.all[4], user: user1)