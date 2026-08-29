from datetime import datetime
from random import randint
import time

# initiate the odd list array
odds = []

# use the for loop and if logic to populate the odds list from 1 - 59
for i in range (0, 60):
    if i & 1:
        odds.append(i)
        # print(odds) # use this for troubleshooting
# print(odds) # use this for troubleshooting

for runNumber in range(5): # run it 5 times total
    # grab the instantaneous time:
    right_this_hour = datetime.today().hour
    right_this_minute = datetime.today().minute
    right_this_second = datetime.today().second

    # create string versions of the HH:MM:SS for printing out on each loop pass
    stringRight_this_hour = str(right_this_hour)
    stringRight_this_minute = str(right_this_minute)
    stringRight_this_second = str(right_this_second)

    # generate a random integer for seconds to pause:
    randTime = randint(1, 6)
    randTimeChar = str(randTime) # easier to concatenate for printing
    stringRunNumber = str(runNumber) #easier to concatenate for printing run number

    print('This is run number: ' + stringRunNumber + ' with random generated seconds to pause for: ' + randTimeChar + ' seconds')
    print('current time: {0}:{1}:{2}'.format(stringRight_this_hour, stringRight_this_minute, stringRight_this_second))
    if right_this_hour in odds:
        print("This is an odd hour")
    else:
        print("Not an odd hour")

    if right_this_minute in odds:
        print("This is an odd minute")
    else:
        print("Not an odd minute")

    if right_this_second in odds:
        print("This is an odd second")
    else:
        print("Not an odd second")
    time.sleep(randTime)
