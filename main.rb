puts "hello ruby!!!!"

range = 5..10
range.each{|item|
    print("item = #{item} \r\n");

}






#instance variable
#인스턴스 매서드내에서만 사용하는 변수.
# class User
#     def initialize(name)
#         @name = name #instance variable
#     end
#     def put_name
#         p @name
#     end
# end

# user1 = User.new("taroo")
# user2 = User.new("hanako")
# user1.put_name
# user2.put_name

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
