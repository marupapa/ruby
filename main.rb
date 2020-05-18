
print "hello ruby", "\n"

# greedy  Algorithm
def solution(number, k)
    answer = ''

    iArray = number.each_char.map(&:to_i)
    resultArray = []

    p iArray
    
    while k > 0 && iArray.length > 0 do
        if resultArray.length < 1
            resultArray.push(iArray.shift)
        end

        if resultArray[resultArray.length-1] < iArray[0]
            resultArray.delete_at(resultArray.length-1)
            k -= 1
        elsif 
            resultArray.push(iArray.shift)
        end
        
    end

    answer = resultArray.concat(iArray).join
    p answer

    return answer
end

solution("87654321", 3)