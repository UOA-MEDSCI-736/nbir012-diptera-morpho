import csv

def csv_writer(data2, path):
    with open(path, 'w') as csv_file:
        for line in data2:
            csv_file.write(line)
            csv_file.write('\n')

array = [] #create empty array
with open('/home/admin736/Desktop/share-git/sandbox-1/nbir012-diptera-morpho/geo-morph-data.TPS','r') as file: #define file and open required tps file
    for line in file: #create loop using each line (string) within the file
        smallLine = line.strip('\r\n') #define line by removing the newline fluff (\r\n)
        a = smallLine.split(" ")
        b = ",".join(map(str,a))
        array.append(b)
print(array)

path = "TPStoCSV.csv"
csv_writer(array, path)