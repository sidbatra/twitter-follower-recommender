#!/usr/bin/ruby

key = "-1"
value = ["","",""]
h={}
accept=false
count=0

STDIN.each_line do |line|
	parts = line.chomp.split("\t")
	k = parts[0]

	if key != "-1" && key != k
       puts key+"\t"+count.to_s+"\t"+value.join("\t") if accept 
       value = ["","",""]
       h={}
       accept=false
       count=0
	end
    
    if !h.has_key?(parts[1]) 
        key=k
        value[0] += parts[1] + "|" 
        value[1] += parts[2] + "|" 
        value[2] += parts[3] + "|" 
        h[parts[1]]=1
        count+=1
        accept=true if parts[1] != key
    end
end

puts key+"\t"+count.to_s+"\t"+value.join("\t") if accept 
