
def solution(arrangement)
    answer = 0

    arrangement.gsub!("()", "0")
    stackPipe = []

    puts stackPipe.size()

    for i in 0..(arrangement.length())
        if arrangement[i] == "("
            stackPipe.push('-')
        elsif arrangement[i] == ")"
            stackPipe.pop
            answer += 1
        elsif
            arrangement[i] == "0"
            answer += stackPipe.size()
        end
    end
    
    puts answer

    return answer
end

solution("()(((()())(())()))(())")



=begin
def solution(arrangement)
    answer = 0

    arrangement.gsub!("()", "0")
    iPipeCnt = 0
    for i in 0..(arrangement.length())
        item = arrangement[i]

        if item == "("
            iPipeCnt += 1
        elsif  item == ")"
            iPipeCnt -= 1
            answer += 1
        elsif item == "0"
            answer += iPipeCnt
        end
    end
    return answer
end
＝end