import os
import time
import datetime

#find and count all the *.png files which are present

i = 0
i1 = str(i) #cast it as a string
checkPNG = if os.path.exists("selenium-screenshot-+i1.png")

# use a WHILE loop, while *.png is not the last picture file, run through the logic
while
    # Both the variables would contain time
    # elapsed since EPOCH in float
    if os.path.exists("*.png")
    ti_c = os.path.getctime(path)
    ti_m = os.path.getmtime(path)

    # Converting the time in seconds to a timestamp
    c_ti = time.ctime(ti_c)
    m_ti = time.ctime(ti_m)

    # read each file to compare current date time and minus 8 hours or 1 day from today's date time
    # delete the file IF it qualifies for deleting
    x = datetime.datetime.now()
    if os.path.exists("demofile.txt"):
      os.remove("demofile.txt")
    else:
      print("The file does not exist")