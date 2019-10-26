
with open('/home/hector/Dropbox/Scripts/yipi.txt') as f:
    for line in f:  #Line is a string
        #split the string on whitespace, return a list of numbers 
        # (as strings)
        numbers_str = line.split()
        #convert numbers to floats
        numbers_float = [float(x) for x in numbers_str]  #map(float,numbers_str) works too
