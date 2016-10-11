#class Compare(object):
#    def compare(self, array_tps, array):
#        pass
array_tps = [] #create empty array
with open('../Data/geo-morph-data.TPS','r') as file: #define file and open required tps file
    for line in file: #create loop using each line (string) within the file
        line = line.strip('\r\n') #define line by removing the newline fluff (\r\n)
        line = line.strip(' ')
        array_tps.append(line) #append (add) the outcome into the original blank array we created above.
                
values_tps = array_tps[2].split(',') #defining values as individual components in the array split by blank space this takes the 0th one
print(values_tps)
#print(array_tps)    
#if values[1] == '1672.00000':
#    print('Test Passed')
#else:
#    print('Test Failed')
    
#print(values)

array_csv = [] #create empty array
with open('../Data/TPStoCSV.csv','r') as file: #define file and open required tps file
    for line in file: #create loop using each line (string) within the file
        #line = line.split(',') #define line by removing the newline fluff (\r\n)
        line = line.strip('\r\n')
        array_csv.append(line) #append (add) the outcome into the original blank array we created above.
                
values_csv = array_csv[2].split(',') #defining values as individual components in the array split by blank space this takes the 0th one
print(values_csv)
#print(array_csv)    
#f values[1] == '1672.00000':
#    print('Test Passed')
#else:
#    print('Test Failed')
    
#print(values)