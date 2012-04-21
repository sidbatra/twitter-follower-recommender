#!/usr/bin/ruby
$c=[12,112,212,312,412,512,612]

def rbf(x)
    $c.collect{|c| 2.71828183 ** ((-(c-x)**2)/18) }
end

key = "-1"
value = [""]+Array.new(7,0)
sum=0.0

STDIN.each_line do |line|
	parts = line.split("\t")
	k = parts[0]

	if key != "-1" && key != k
        puts key+"\t"+value[0]+"\t"+value[1..-1].collect{|i| "%0.3f" % (i/sum).to_s}.join(" ")
        value = [""]+Array.new(7,0)
        sum=0.0
	end
    
    key=k
	value[0] += parts[1]+" "
    soft=rbf(parts[2].to_i*100+parts[3].to_i)
    soft.each_with_index{|r,i| value[i+1]=r}
    #value[parts[2].to_i+1] += 1
    #value[parts[3].to_i+7+1] += 1
    sum+=1
end

#puts key+"\t"+value[0]+"\t"+value[1..-1].collect{|i| "%0.3f" % (i/sum).to_s}.join(" ")
puts key+"\t"+value[0]+"\t"+value[1..-1].collect{|i| "%0.3f" % (i)}.join(" ")

