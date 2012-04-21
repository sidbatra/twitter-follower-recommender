#!/usr/bin/ruby

def analyze(fvs)
    words={}; nums=Array.new(11,0)
    fvs=fvs.split("|")
    fvs.each do |fv|
        parts=fv.split(",")
        parts[0].split(" ").each{|w| if words.has_key?(w) then  words[w]+=1 else  words[w]=1; end}
        parts[1].split(" ").each_with_index{|n,i| nums[i] += n.to_f}

    end
    nums=nums.collect{|n| "%0.3f" % n/=(fvs.length.to_f)};
    words.sort{|x,y| y[1] <=> x[1]}[0..9].collect{|x,y| x}.join(" ")+","+nums.join(" ")
end

ids=["batrasid","cs345a1","cs345a2","gumpukagoshu"]
pass=["hidden","hidden","hideen","hideen"]

i=0

STDIN.each_line do |line|
    parts=line.chomp.split("\t")
    initial=`curl -s -u #{ids[i]}:#{pass[i]} http://twitter.com/friends/ids/#{parts[0]}.json`
    
    if initial.scan("error").length == 0
        f_ids=initial[1..-2].split(",")
        f_ids+=`curl -s -u  #{ids[i]}:#{pass[i]} http://twitter.com/followers/ids/#{parts[0]}.json`[1..-2].split(",")
    
        friends=0
        sum=0
        parts[1].split("|").each do |f|
            sum+=1
            screen=`curl -s -u  #{ids[i]}:#{pass[i]} http://twitter.com/users/show/#{f}.json`.scan(/,"id[^,]+/)
            if screen.length > 1 && f_ids.include?(screen[1].split(":")[1])
                friends += 1
            end
        end
        friends /= (sum.to_f-1)
        puts parts[0]+"\t"+parts[1]+"\t"+friends.to_s+"\t"+analyze(parts[2])
    else
        puts parts[0]+"\t"+parts[1]+"\t"+"-1"+"\t"+analyze(parts[2])
    end
    i=(i+1)%3
end
