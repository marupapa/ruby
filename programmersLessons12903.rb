


def solution(s)
    answer = ''

    # even or odd
    if s.length() % 2 == 0
        puts "even!!"

        sCount = (s.length() / 2)
        answer = s[sCount-1..sCount]
    else
        puts "odd!!"
        sCount = (s.length() / 2)
        answer = s[sCount]
        
    end

    return answer
end



solution("abcdefghijklmnp")