#key = "-1"
#value = []
#STDIN.read.split("\n").each do |line|
	#line = line.chomp    
	#puts "#{2}\t#{line.split('\t').join('*')}"
	#words = line.split('\t')
	#puts "#{words[0]}\t#{words[1]}"
	#if key == "-1" || key == words[0]
	#	key = words[0]
	#	value.push(words[1])
	#elsif key != words[0]	
	#	puts "#{key}\t#{value.join(',')}"
	#	key = words[0]
	#	value = []
	#end
#end

words = STDIN.read.split("\n").collect{|l| l.split("\t")}

h = {}

words.each do |w|
	if h[w[0]].nil?
		h[w[0]] = []
	end
	h[w[0]].push(w[1])
end

h.each do |i|
	puts "#{i[0]}\t#{i[1].join(',')}"
end
