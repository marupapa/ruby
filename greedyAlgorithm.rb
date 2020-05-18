
# greedy  Algorithm
def solution(number, k)
    answer = ''

    iArray = number.each_char.map(&:to_i)
    
    answer << iArray.shift.to_s
    while k > 0 && iArray.length > 0 do
        
        if answer.length < 1
            answer << iArray.shift.to_s
        end

        if answer[answer.length-1].to_i < iArray[0]
            answer.slice!(answer.length-1)
            k -= 1
        elsif 
            answer << iArray.shift.to_s
        end
    end

    if answer.length < (number.length - k)
        answer += iArray.join
    end

    answer.slice!(answer.length-k, answer.length)
    p answer

    return answer
end



#solution("10000", 2)
solution("7777777", 2)
solution("4177252841", 4) #> 775841
#solution("87654321", 3)