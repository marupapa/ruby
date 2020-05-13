print "hello ruby", "\n"


def solution(a, b)
    answer = ''

    weekly = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
    monthly = [31,29,31,30,31,30,31,31,30,31,30,31]

    days = 0
    if a > 1
        range = 0..(a - 2)
        range.each{|item|
            days = days + monthly[item]
        }
    end

    days = days + (b - 1) 
    answer = weekly[days % weekly.length()]

    return answer
end

solution(5, 24)