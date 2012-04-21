
STDIN.read.split("\n").each do |line|
	line = line.chomp    
	puts line.split("\t").join("\t")
end
