# begin
# # 例外が起こるかも知れないコード
# rescue => error # 変数(例外オブジェクトの代入)
# # 例外が発生した時のコード
# end


def hello
    File.open("/hello/file")
end

begin
    #エラーを起こす可能性があるコード
    hello
#例外オブジェクトを変数ERRORに代入
rescue => error
    #変数の値を表示
    puts error
end
