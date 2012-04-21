import sys 
import re

for line in sys.stdin: 
    line = line.strip()     
    words = line.split(' ') 

    for i in range (0,len(words)):
        words[i] = re.sub("\d|\W","",words[i])
        words[i] = words[i].lower()
        if len(words[i]) != 0:
            print '\n'.join([words[i]])


