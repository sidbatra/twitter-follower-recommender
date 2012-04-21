#!/usr/bin/ruby

STDIN.each_line do |line|
    parts=line.split("\t")
    parts[1].split(" ").each do |w|
        puts w
    end
end
