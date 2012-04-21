#!/usr/bin/ruby

file=ARGV[0] #"test.txt"
ofile = ARGV[1] #"out.txt"
cols = ["T","U","W"]
cols.each{|c| `cat #{file} | grep ^#{c} > #{c}.txt`}

`touch #{ofile}`

streams = cols.collect{|c| File.open("#{c}.txt","r")}
output = File.new(ofile,"a")

while(true)
    lines = streams.collect{|s| s.gets.chomp.split("\t")[1]}
    output.puts("#{lines[0]}\t#{lines[1].gsub('http://twitter.com/','')}\t#{lines[2]}")

    if streams.collect{|s| s.eof?}.include?(true)
        break
    end
end

cols.each{|c| `rm #{c}.txt`}
