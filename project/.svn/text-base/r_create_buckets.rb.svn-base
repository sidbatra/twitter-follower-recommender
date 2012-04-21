#!/usr/bin/ruby

$w=[0.5,0.01]

def dist(a,b)
    b=b.split(",").collect{|p| p.split(" ")}
    nonwords=a[2].zip(b[2]).inject(0){|sum,x| sum+(x[0].to_f-x[1].to_f)**2}
    h={}
    a[0].each_with_index{|w,i| h[w]=a[1][i].to_f}
    b[0].each_with_index{|w,i| if h.has_key?(w) then h[w]-=b[1][i].to_f else h[w]=b[1][i].to_f end}
    h.values.inject(0){|sum,v| sum+(v**2)}*$w[0] + nonwords*$w[1]
    #(1-((a[0]&b[0]).length / [[a[0].length,b[0].length].min.to_f,1].max))*$w[0] + nonwords*$w[1]
end

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
    
    key=k
    fvs=parts[3].split("|")
    parts[1]=parts[1].split(",").collect{|p| p.split(" ")}
    parts[2].split("|").each_with_index do |user,i|
        d=dist(parts[1],fvs[i]) 
        if !h.has_key?(user) && d<=0.5
            value[0] += user + "|" 
            value[1] += fvs[i] + "|" 
            value[2] += "%0.3f" % d + "|" 
            h[user]=1
            count+=1
            accept=true if user != key
        end
    end
end

puts key+"\t"+count.to_s+"\t"+value.join("\t") if accept 
