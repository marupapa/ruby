
# 10進数から2進数への変換
# 255.to_s(2) # => "11111111"

# 2進数から10進数への変換
# "11111111".to_i(2) # => 255


#特定文字がいくつあるかをわかるコード
# 100.to_s(2).split(//).count('1')
puts 100.to_s(2).split(//).count('1')


def solution(n)
    answer = 0

    #s1String = n.to_s(2)
    # n의 2진수를 구해서
    # n의 2진수의 1의 갯수를 구함
    # n에 1을 더하는 루프를 작성
    # "1"의 갯수가 같은 수가 있다면 answer에 대입하고 루프종료

    cnt = n.to_s(2).split(//).count('1')
    #cnt = 0 #charCnt(s1String)
    # for i in 0..s1String.length()
    #     if (s1String[i] == '1')
    #         cnt += 1
    #     end
    # end

    nLoop = n
    loop do
        nLoop += 1

        tempCnt = nLoop.to_s(2).split(//).count('1')
        # tempString = nLoop.to_s(2)
        # for i in 0..tempString.length()
        #     if (tempString[i] == '1')
        #         tempCnt += 1
        #     end
        # end
        
        if tempCnt == cnt
            answer = nLoop
            break
        end
        
    end

    puts answer
    return answer
end

solution(15)