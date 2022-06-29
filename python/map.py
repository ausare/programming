#!/usr/bin/python3

array = 'this is my array . and  I will map it  '.split()

new_array = map(lambda x: x + " ADDED", array)

for i in new_array:
	print(i)
