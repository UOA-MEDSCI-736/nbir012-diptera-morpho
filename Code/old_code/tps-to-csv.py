#test to see if file is defined. This test should fail.
#file.read()
#defining 'file' as a TPS file in my folder
file = open('../Data/relative_warps.csv','r')
print(file.read())

