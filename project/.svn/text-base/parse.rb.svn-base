#!/usr/bin/ruby

start = Time.now

input  = File.open(ARGV[0],"r"); input.gets
output = File.open(ARGV[1],"a")

while(line = input.gets)
    if line == "\n"
        output.write("\n")
    else
        output.write(line.chomp)
    end
end

input.close();
output.close();

puts Time.now - start
