require_relative 'Modules/music_module'
require_relative 'classes/music/music_album'
require_relative 'Modules/genre_module'
require_relative 'Modules/book_module'
require_relative 'classes/book/book'
require_relative 'Modules/label_module'

class App
  include MusicModule
  include GenreModule
  include BookModule
  include LabelModule

  def initialize
    @songs = []
    @books = []
    @games = []
    @genres = []
    @labels = []
    @authors = []
  end

  def create_musicalbum
    MusicModule.add_music_album(self)
  end

  def add_book(app)
    puts 'Please enter the Publisher:'
    publisher = gets.chomp
    puts 'Please enter the covers state:'
    cover_state = gets.chomp
    puts 'Please enter the published date of the book:'
    publish_date = gets.chomp
    puts 'Please enter the title of the book: '
    title = gets.chomp
    puts 'Please enter the color of the book: '
    color = gets.chomp
    app.created_book(publisher, cover_state, publish_date)
    new_label = Label.new(title, color)
    @labels << new_label
  end
end
App.new
