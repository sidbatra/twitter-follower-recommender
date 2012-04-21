#!/usr/bin/ruby

STDIN.each_line do |line|
    parts=line.split("\t")
    
    probs=parts[2].split(" ").collect{|v| v.to_f}
    parts[1].split(" ").each_with_index do |w,i|
        puts w+"\t"+parts[0]+"\t"+parts[1]+","+parts[2]+","+parts[3] if rand <= probs[i]
    end
    parts[1].split(" ").each_with_index do |wi,i|
        parts[1].split(" ").each_with_index do |wj,j|
            puts wi+"_"+wj+"\t"+parts[0]+"\t"+parts[1]+","+parts[2]+","+parts[3] if rand <= 2 * probs[i] * probs[j]
        end
    end
    parts[1].split(" ").each_with_index do |wi,i|
        parts[1].split(" ").each_with_index do |wj,j|
            parts[1].split(" ").each_with_index do |wk,k|
                puts wi+"_"+wj+"_"+wk+"\t"+parts[0]+"\t"+parts[1]+","+parts[2]+","+parts[3] if rand <= 3 * probs[i] * probs[j] * probs[k]
        end
    end
end
