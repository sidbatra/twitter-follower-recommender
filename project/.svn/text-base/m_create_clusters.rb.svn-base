#!/usr/bin/ruby



$w=[0.5,0.01]

def dist(a,b)
    nonwords=0; a[1].zip(b[1]){|x,y| nonwords+=(x.to_f-y.to_f)**2}
    (1-((a[0]&b[0]).length / [[a[0].length,b[0].length].min.to_f,1].max))*$w[0] + nonwords*$w[1]
end

##### main

fvs = STDIN.read.split("\n").collect{|fv| [fv.split("\t")[1].split(" "),fv.split("\t")[2].split(" ")]}
q = []

(0..fvs.length-1).each do |i|
    (i+1..fvs.length-1).each do |j|
       q.push([[i,j],dist(fvs[i],fvs[j])])
    end
end

