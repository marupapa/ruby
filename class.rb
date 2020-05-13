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


# class variable
# 정의된 클래스내에서 공유하는 값을 저장하는 변수.
class Samurai
    @@samurai = 1
    def foo
        puts @@samurai
    end
end

person1 = Samurai.new
person1.foo

class Bushi < Samurai
    def hoge
        puts @@samurai
    end
end

person2 = Bushi.new
person2.hoge




#class instance variable
class MyClass
    @class_instance_var = "ruby"
    def self.class_instance_var
        puts @class_instance_var
    end
    def class_instance_var
        puts @class_instance_var
    end

end

instance = MyClass.new
instance.class_instance_var

# accessable
MyClass.class_instance_var

class SubClass < MyClass
    def self.class_instance_var_again
        puts @class_instance_var
    end
end

SubClass.class_instance_var_again

# string nil & empty check 
drink = ["milk", nil, "coffee"]
drink.each{ |obj|
    puts obj.nil?
}

drink = Hash.new
food = ""

puts drink.empty?
puts food.empty?
