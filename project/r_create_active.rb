#!/usr/bin/ruby

sum = Array.new(11,0)

STDIN.each_line do |line|
	line.chomp.split("\t")[1].split(" ").each_with_index{|v,i| sum[i]+=v.to_f}
end

puts sum.join(" ")
