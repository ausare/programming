#!/usr/bin/python3
from datetime import date, timedelta

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
fourweeks = monday + timedelta(weeks=4)
print("Todays date is " + str(today))
print("Mondays date is " + str(monday))
print(f"Monday that's 4 weeks out {fourweeks}")
