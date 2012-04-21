#!/usr/bin/ruby

key = "-1"
value = ["",""]
sum=0
reject=false

STDIN.each_line do |line|
	parts = line.chomp.split("\t")
	k = parts[0]

	if key != "-1" && key != k
       puts key+"\t"+value.join("\t") if !reject && sum > 1
       value = ["",""]
       sum=0
       reject=false
	end

    if sum > 10000
        reject=true
   else
        key=k
    	value[0] += parts[1]+"|"
	    value[1] += parts[2]+"|"
        sum+=1
   end
    
end

puts key+"\t"+value.join("\t") if !reject && sum > 1
