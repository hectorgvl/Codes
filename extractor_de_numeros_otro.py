def get_numbers_from_file(file_name):
    file = open(file_name, "r")
    strnumbers = file.read().split()
    return map(int, strnumbers)


print get_numbers_from_file("/home/hector/Dropbox/Scripts/yipi.txt")
