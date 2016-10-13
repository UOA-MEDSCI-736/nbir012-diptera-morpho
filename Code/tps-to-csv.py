#test to see if file is defined. This test should fail.
#file.read()
#defining 'file' as a TPS file in my folder
file = open('../Data/geo-morph-data.TPS','r')
print(file.read())

