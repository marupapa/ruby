class User
    def name
        @name
    end

    def name=(name)
        @name = name
    end
end

user = User.new
p user

user.name = "user"
p user.name

user1 = User.new
user2 = User.new
user1.name = "taro"
user2.name = "hanako"
p user1.name 
p user2.name


class Hello
    def initialize(username)
        @username = username
    end
    def hello
        puts "hello, " + @username.to_s
    end
end
h = Hello.new("Kevin")
h.hello