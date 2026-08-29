from datetime import datetime

odds = []
for i in range (0, 60):
    if i & 1:
        odds.append(i)
        # print(odds)
# print(odds)

right_this_minute = datetime.today().minute
right_this_second = datetime.today().second

if right_this_minute in odds:
    print("This is an odd minute")
else:
    print("Not an odd minute")

if right_this_second in odds:
    print("This is an odd second")
else:
    print("Not an odd second")