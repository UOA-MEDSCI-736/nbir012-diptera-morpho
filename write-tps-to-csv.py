import csv #importing the csv library into Python

#this function writes processed arrays to csv
def csv_writer(data2, path): #defining csv_writer function
    with open(path, 'w') as csv_file: 
        for line in data2:
            csv_file.write(line)
            csv_file.write('\n')

#this is creating arrays and populating it with cleaned data from the tps file
tps_array = [] #create empty array
with open('/home/admin736/Desktop/share-git/sandbox-1/nbir012-diptera-morpho/geo-morph-data.TPS','r') as file: #define file and open required tps file
    for line in file: #create loop using each line (string) within the file
        smallLine = line.strip('\r\n') #define smallLine by removing the newline fluff (\r\n)
        a = smallLine.split(" ")
        b = ",".join(map(str,a))
        tps_array.append(b)
print(tps_array)

#this defines what the file name will be.
path = "TPStoCSV.csv"
csv_writer(tps_array, path)

# read csv
# apend csv rows to new array
# compare new csv array with tps array 
# do as a propare Python test file