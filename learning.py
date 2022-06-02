from datetime import datetime, date
from os import getcwd
import time
import html
import random

from dateutil.utils import today

odds = [ 1, 3, 5, 7, 9, 11, 13, 15, 17, 19,
        21, 23, 25, 26, 27, 29, 31, 33, 35, 37, 39,
        41, 43, 45, 47, 49, 51, 53, 55, 57, 59 ]

right_this_second = datetime.today().second

if right_this_second in odds:
    print("This second seems a little odd")
else:
    print("Not an odd second")

where_am_I = getcwd()
print(where_am_I)

today()

todays_date = date.today()
#todays_date1 = datetime.date.today()
print (todays_date)

todays_day = date.today().day
print (todays_day)

todays_month = date.today().month
print (todays_month)

todays_year = date.today().year
print (todays_year)

date_isoFormat = date.isoformat(today())
print(date_isoFormat)

strf_time = time.strftime("%H:%M")
print(strf_time)
strf_time01 = time.strftime("%I:%M")
print(strf_time01)

strf_time2 = time.strftime("%A %p")
print(strf_time2)

#concatenate
concat = strf_time + " " + strf_time2
print(concat)
concat2 = strf_time01 + " " + strf_time2
print(concat2)

#html
script = html.escape("This HTML fragment contains a <script>script</script> tag.")
print(script)
scriptUnescape = html.unescape("I &hearts; Python's &lt;standard library&gt;.")
print(scriptUnescape)


for i in [10,20,30]:
    print(i)

for ch in "Hola senores!":
    print(ch)

for num in range(5):
    print("cinco times")

for i in range(5):
    right_this_second = datetime.today().second

    if right_this_second in odds:
        print("This second seems a little odd")
    else:
        print("Not an odd second")
    gen_rand_int = random.randint(1,5)
    stringy = "Current random integer: "
    conv_to_str = str(gen_rand_int)
    statement = stringy + conv_to_str
    print(statement)
    time.sleep(gen_rand_int)