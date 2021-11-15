# 读取文件，并获取文件对象 song_file
File.open('test') do |song_file|
    # 遍历song_file内容，获取每一行
    song_file.each do |line|
        # 对每行数据进行操作，使用chomp方法去除换行符
        # 通过split方法对取到的行数据进行分割
        src, length, name, artist = line.chomp.split(/\s*\|\s*/)
        # 使用squeeze!方法去除多余的空格
        name.squeeze!(" ")
        # scan类似split，但是指定匹配模式
        mins, secs = length.scan(/\d+/)
        puts src, mins.to_i * 60 + secs.to_i, name, artist
    end
end