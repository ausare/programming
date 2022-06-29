#!/usr/bin/python3

# stumbled on this in a doc, instesting
list1 = 'this is not going'.split()
list2 = 'work this time no'.split()
newlist = zip(list1, list2)
newlist
# <zip object at 0x105f4e180>
dict(newlist)
# {'this': 'work', 'is': 'this', 'not': 'time', 'going': 'no'}
