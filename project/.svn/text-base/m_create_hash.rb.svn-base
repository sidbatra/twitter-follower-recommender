#!/usr/bin/ruby

$w=[0.5,0.01]

def dist(a,b)
    nonwords=a[2].zip(b[2]).inject(0){|sum,x| sum+(x[0].to_f-x[1].to_f)**2}
    h={}
    a[0].each_with_index{|w,i| h[w]=a[1][i].to_f}
    b[0].each_with_index{|w,i| if h.has_key?(w) then h[w]-=b[1][i].to_f else h[w]=b[1][i].to_f end}
    h.values.inject(0){|sum,v| sum+(v**2)}*$w[0] + nonwords*$w[1]
    #(1-((a[0]&b[0]).length / [[a[0].length,b[0].length].min.to_f,1].max))*$w[0] + nonwords*$w[1]
end

STDIN.each_line do |line|
    parts=line.split("\t")
    fvs=parts[2].split("|")
    raw_fvs=fvs.collect{|fv| fv.split(",").collect{|p| p.split(" ")}}
    users=parts[1].split("|")
    (0..users.length-1).step(1) do |i|
        (i..users.length-1).step(1) do |j|
            d=dist(raw_fvs[i],raw_fvs[j]) 
            puts users[i]+"\t"+users[j]+"\t"+fvs[j]+"\t"+"%0.3f" % d if d < 0.5
        end
    end
end

