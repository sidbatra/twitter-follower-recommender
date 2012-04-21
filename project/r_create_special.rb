#!/usr/bin/ruby

key = "-1"
sum=0

STDIN.each_line do |line|
	k = line.chomp

	if key != "-1" && key != k
       puts key+"\t"+sum.to_s 
       sum=0
	end

        key=k
        sum+=1
end

puts key+"\t"+sum.to_s 
