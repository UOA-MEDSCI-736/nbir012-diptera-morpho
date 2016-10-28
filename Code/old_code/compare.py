array_tps = [] #create empty array
with open('../Data/geo-morph-data.TPS','r') as file: #define file and open required tps file
    for line in file: #create loop using each line (string) within the file
        line = line.strip('\r\n') #define line by removing the newline fluff (\r\n)
        line = line.strip(' ')
        #line = line.split(' ')
        array_tps.append(line) #append (add) the outcome into the original blank array we created above.
                

array_csv = [] #create empty array
with open('../Data/TPStoCSV.csv','r') as file: #define file and open required tps file
    for line in file: #create loop using each line (string) within the file
        line = line.strip('\r\n')
        line = line.replace(",", " ")
        line = line.strip(" ")
        array_csv.append(line) #append (add) the outcome into the original blank array we created above.
                


print(array_tps[1])
print(len(array_csv))
print(array_csv[2])