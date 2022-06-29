#!/usr/bin/python3
import re

# filter with regular function
def fil(item):
	if not re.search('(^\.|2$)', item):
		return True

array = ['Item1','Item2','.Item3','.Item4','','6']

filtered_array = filter(fil, array)

for i in filtered_array:
	print(i)

# filter using lambda
new_array = filter(lambda x: not re.search('(^\.|2$)', x) , array)
print('Using Lambda')
for i in new_array:
	print(i)
