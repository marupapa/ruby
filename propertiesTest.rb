class Movie
    # attr_reader :name
    # attr_writer :name
    attr_accessor :name
    def initialize(name)
        @name = name
    end
end
  
obj1 = Movie.new('Forrest Gump')
obj1.name = 'Fight Club'
p obj1.name #=> 'Fight Club'

