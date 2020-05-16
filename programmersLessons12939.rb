

def solution(s)
    answer = ''

    arr = []
    s.split(' ').each do |item|
        arr.append(item.to_i)
    end

    # nSmall = arr[0]
    # nBig = arr[0]

    # for i in 1..arr.length()-1
    #     if nSmall > arr[i] 
    #         nSmall = arr[i]
    #     end
    #     if nBig < arr[i]
    #         nBig = arr[i]
    #     end
    # end

    # answer = nSmall.to_s + " " + nBig.to_s

    answer = arr.min.to_s + " " + arr.max.to_s

    p answer

    return answer
end

solution("-1 -2 -3 -4")