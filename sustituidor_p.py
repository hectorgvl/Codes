# Read in the file
with open('yayaya.txt', 'r') as file :
  filedata = file.read()

# Replace the target string


filedata = filedata.replace(' y ', '')
filedata = filedata.replace(' a ', ' ')
filedata = filedata.replace(' ante ', ' ')
filedata = filedata.replace(' bajo ', ' ')
filedata = filedata.replace(' cabe ', ' ')
filedata = filedata.replace(' con ', ' ')
filedata = filedata.replace(' contra ', ' ')
filedata = filedata.replace(' de ', ' ')
filedata = filedata.replace(' desde ', ' ')
filedata = filedata.replace(' en ', ' ')
filedata = filedata.replace(' hacia ', ' ')
filedata = filedata.replace(' hasta ', ' ')
filedata = filedata.replace(' para ', ' ' )
filedata = filedata.replace(' por ', ' ')
filedata = filedata.replace(' segun ', ' ')
filedata = filedata.replace(' sin ', ' ')
filedata = filedata.replace(' so ', ' ')
filedata = filedata.replace(' sobre ', ' ')
filedata = filedata.replace(' tras ', ' ')
filedata = filedata.replace(' durante ', ' ')
filedata = filedata.replace('mediante ', ' ')
filedata = filedata.replace(' excepto ', ' ')
filedata = filedata.replace(' salvo ', ' ')
filedata = filedata.replace(' incluso ', ' ')
filedata = filedata.replace(' mas ', ' ')
filedata = filedata.replace(' menos ', ' ')
filedata = filedata.replace(' menos ', ' ')
filedata = filedata.replace('(', ' ')
filedata = filedata.replace(')', ' ')
filedata = filedata.replace('.', ' ')
filedata = filedata.replace(',', ' ')
filedata = filedata.replace(':', ' ')
filedata = filedata.replace('"', ' ')



# Write the file out again
with open('yipi_2.txt', 'w') as file:
  file.write(filedata)

