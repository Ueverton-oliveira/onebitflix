## Customize de acordo com os videos e thumbnails de exemplo que você subir para o seu servidor

# Categories
ror = Category.create(name: 'Pinkfong Canções para crianças')
talks = Category.create(name: 'Talks')
testes = Category.create(name: 'Testes')
outros = Category.create(name: 'Outros')

# Featured Movie
movie1 = Movie.create(title: "A Dança Do Pinguim", description: "Canções de Animais - Pinkfong Canções para crianças", thumbnail_key: "thumbnails/download.jpeg", thumbnail_cover_key: "thumbnails/download-cover.jpeg", video_key: "videos/A Dança Do Pinguim - Canções de Animais - Pinkfong Canções para crianças.mp4", highlighted: true, category: ror, featured_thumbnail_key: "thumbnails/Nascente-Azul-Flutuacao-Bonitour-Passeios-em-Bonito-MS-1106_66445.jpeg")

# Users
user1 = User.create(name: 'example', email: 'example@example.com', password: '123456', password_confirmation: '123456')
user2 = User.create(name: 'example2', email: 'example2@example.com', password: '123456', password_confirmation: '123456')
user3 = User.create(name: 'example3', email: 'example3@example.com', password: '123456', password_confirmation: '123456')
user4 = User.create(name: 'example4', email: 'example4@example.com', password: '123456', password_confirmation: '123456')
user5 = User.create(name: 'example5', email: 'example5@example.com', password: '123456', password_confirmation: '123456')

# Movies sem série
movie2 = Movie.create(title: "ABC do Tubarão", description: "Eu já sei o ABC! - Cante junto com o Bebê Tubarão - Pinkfong Canções para Crianças", thumbnail_key: "thumbnails/download (1).jpeg", thumbnail_cover_key: "thumbnails/download (1)-cover.jpeg", video_key: "videos/ABC do Tubarão - Eu já sei o ABC! - Cante junto com o Bebê Tubarão - Pinkfong Canções para Crianças.mp4", category: ror)
movie3 = Movie.create(title: "Alguém Viu O Meu Rabinho ", description: "Canções de Animais - Pinkfong Canções para crianças", thumbnail_key: "thumbnails/download (2).jpeg", thumbnail_cover_key: "thumbnails/download (2)-cover.jpeg", video_key: "videos/Alguém Viu O Meu Rabinho - Canções de Animais - Pinkfong Canções para crianças.mp4", category: ror)
movie4 = Movie.create(title: "Animais Bebês", description: " Canções de Animais - Pinkfong Canções para Crianças", thumbnail_key: "thumbnails/download (3).jpeg", thumbnail_cover_key: "thumbnails/download (3)-cover.jpeg", video_key: "videos/Animais Bebês - Canções de Animais - Pinkfong Canções para Crianças.webm", category: ror)
movie5 = Movie.create(title: "Chita", description: "Canções de Animais - Pinkfong Canções para Crianças", thumbnail_key: "thumbnails/download (4).jpeg", thumbnail_cover_key: "thumbnails/download (4)-cover.jpeg", video_key: "videos/Chita - Canções de Animais - Pinkfong Canções para Crianças.mp4", category: ror)


# Series
movie5 = Serie.create(title: 'De quem são essas caudas ', description: 'Canções de Animais - Pinkfong Canções para Crianças', thumbnail_key: "thumbnails/download (5).jpeg", thumbnail_cover_key: "thumbnails/download (5)-cover.jpeg", category: outros)
movie6 = Movie.create(title: "Divertido Som Animal", description: "Canções de Animais - Pinkfong Canções para Crianças.", thumbnail_key: "thumbnails/download (5).jpeg", thumbnail_cover_key: "thumbnails/download (5)-cover.jpeg", video_key: "videos/Divertido Som Animal - Canções de Animais - Pinkfong Canções para Crianças.mp4", serie: movie, episode_number: 1)

# Keep Wathching
Player.create(start_date: Time.now, user: user1, elapsed_time: 10, movie: movie1)
Player.create(start_date: Time.now, user: user1, elapsed_time: 20, movie: movie2)
Player.create(start_date: Time.now, user: user1, elapsed_time: 30, movie: movie3)
Player.create(start_date: Time.now, user: user1, elapsed_time: 40, movie: movie4)
Player.create(start_date: Time.now, user: user1, elapsed_time: 50, movie: movie5)

# Reviews
Review.create(rating: 3, description: 'I have always depended on the kindness of strangers.', reviewable: movie2, user: user1)
Review.create(rating: 2, description: 'Help me, Obi-Wan Kenobi. Youre my only hope.         ', reviewable:movie2, user: user2)
Review.create(rating: 5, description: 'Every time a bell rings, an angel gets his wings.    ', reviewable:movie2, user: user3)
Review.create(rating: 3, description: 'Magic Mirror on the wall, who is the fairest one of all?', reviewable: movie2, user: user4)
Review.create(rating: 5, description: 'Just when I thought I was out, they pull me back in.', reviewable: movie2, user: user5)


# Favorites
Favorite.create(favoritable: Movie.all[0], user: user1)
Favorite.create(favoritable: Movie.all[1], user: user1)
Favorite.create(favoritable: Movie.all[2], user: user1)
Favorite.create(favoritable: Movie.all[3], user: user1)
Favorite.create(favoritable: Movie.all[4], user: user1)