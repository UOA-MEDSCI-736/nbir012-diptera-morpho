import csv #importing the csv library into Python

#this function writes processed arrays to csv
path = "../Data/TPStoCSV.csv"
def csv_writer(data2, path): #defining csv_writer function
    with open(path, 'w') as csv_file: 
        for line in data2:
            csv_file.write(line)
            csv_file.write('\n')

#this is creating arrays and populating it with cleaned data from the tps file
tps_array = [] #create empty array
with open('../Data/geo-morph-data.TPS','r') as file: #define file and open required tps file #I need to make this relative
    for line in file: #create loop using each line (string) within the file
        smallLine = line.strip('\r\n') #define smallLine by removing the newline fluff (\r\n)
        a = smallLine.split(" ")#this is splitting each string into 2 strings when there is a space
        b = ",".join(map(str,a))#this is joining the two strings created in 'a' back together with a comma between them 
        tps_array.append(b)#this is appending all the data in b into tps_array
print(tps_array)

#this defines what the file name will be.
csv_writer(tps_array, path)

# read csv
# apend csv rows to new array
# compare new csv array with tps array
# do as a proper Python test file