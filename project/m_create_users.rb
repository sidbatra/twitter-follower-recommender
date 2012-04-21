#!/usr/bin/ruby


STDIN.each_line do |line|
	if line == "\n" 
			break
	end
end

wday=[3,6,6,2,4,0,2,5,1,3,6,1]

STDIN.each_line do |line|
		    time,user,tweet=line[2..-1].chop,STDIN.gets,STDIN.gets
			if !time.nil? && !STDIN.eof? && user.length > 22
                puts user.chop[21..-1]+"\t"+tweet.chop[2..-1]+"\t"+"#{(time[8..9].to_i-1+wday[time[5..6].to_i-1])%7}"+"\t"+"#{time[11..12].to_i/6}"
            end
            STDIN.gets  
end
