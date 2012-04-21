#!/usr/bin/ruby


STDIN.each_line do |line|
    parts=line.split("\t")
    fvs=parts[2].split("|")
    parts[1].split("|").each_with_index do |user,i|
        puts user+"\t"+fvs[i]+"\t"+parts[1]+"\t"+parts[2]
    end
end
