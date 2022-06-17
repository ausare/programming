#!/usr/bin/python3
from datetime import date, timedelta
import os
''' 
	From my limited knowledge and trouble wrapping my 
	head around this process, timedelta is required to 
	change a date. First we need to subtract the current day 
	from the current day to get monday, from there we can 
	figure out the date. 

	This is another option but I have yet ot install it. 
	from dateutil.relativedelta import relativedelta 
'''

today = date.today()
monday = today - timedelta(days=today.weekday())
wednesday = monday + timedelta(days=2)
threeweeks = monday + timedelta(weeks=3)
print("Todays date is " + str(today))
print("Mondays date is " + str(monday))
print("Wednesday date is " + str(wednesday))
print("Three weeks out is " + str(threeweeks))
print('Creating features folder...')

# os.mkdir(f'{today.month}_{today.day} FEATS')
# This also worked on the first try, which never happens
todays = date.today()
wed = todays_date - timedelta(days=todays_date.weekday()) 
dbf = wednesdays_date + timedelta(weeks=3)
print(f'wed = {wednesdays_date}, dbf {dbf}')
print(f'dbf fold)r name is: {dbf.month}_{dbf.day} FEATS') 
