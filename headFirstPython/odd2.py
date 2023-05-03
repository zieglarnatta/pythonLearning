from datetime import datetime
odds = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19,
        21, 23, 25, 27, 29, 31, 33, 35, 37, 39,
        41, 43, 45, 47, 49, 51, 53, 55, 57, 59]

right_this_hour = datetime.today().hour
right_this_minute = datetime.today().minute
right_this_second = datetime.today().second

if right_this_hour in odds:
        print("Hour If test")
        print("This hour seems a little odd")
else:
        print("Hour Else test")
        print("SO not an ODD hour")

if right_this_minute in odds:
        print("Minute If test")
        print("This minute seems a little odd")
else:
        print("Minute Else test")
        print("SO not an ODD minute")

if right_this_second in odds:
        print("Seconds If test")
        print("This second seems a little odd")
else:
        print("Seconds Else test")
        print("SO not an ODD second")
