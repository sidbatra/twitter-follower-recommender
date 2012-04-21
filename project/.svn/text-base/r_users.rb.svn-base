key = "-1"
value = ""

STDIN.read.split("\n").each do |line|
	parts = line.split("\t")
	k = parts[0]
	v = parts[1]

	if key == "-1" || key == k
		key = k
		value +=  " " + v
	else
		puts "#{key}\t#{value}"
		key = k
		value = v 
	end
end

puts "#{key}\t#{value}"
