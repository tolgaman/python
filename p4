#!/home/linuxbrew/.linuxbrew/bin/python3
##sppecify the file path
import csv
from datetime import datetime
csv_file_path = '/home/tolga.ozaltin/pypy/scripts/r'

data_array = []

with open(csv_file_path, 'r') as file:
        # Create a CSV reader object with dictionary-based access
        csv_reader = csv.DictReader(file)

        # Iterate over each row in the CSV file
        for row in csv_reader:
            # Append the row (dictionary) to the data array
            data_array.append(row)

# Print or process the data array
for row in data_array:
##    print(row['Date'], row['Open'], row['Volume'])
    print(row['Date'], datetime.strptime(row['Date'],'%Y-%m-%d').strftime('%A'), row['Open'], row['Volume'])

print(len(data_array))

print(data_array[2]['Date'])  

RAISE_TOTAL      = 0
FRIDAY_GAIN      = 0
THURSDAY_GAIN    = 0
WEDNESDAY_GAIN   = 0
TUESDAY_GAIN  = 0
MONDAY_GAIN      = 0
for i in range(1,len(data_array)):
     
###   print(data_array[i]['Date'], datetime.strptime(data_array[i]['Date'],'%Y-%m-%d').strftime('%A'), data_array[i]['Open'], data_array[i]['Volume'])
   if (data_array[i]['Close'] > data_array[i-1]['Close'] ):
       RAISE = 1
   elif (data_array[i]['Close'] == data_array[i-1]['Close']):
       RAISE = 1
   else:
       RAISE = -1

   RAISE_TOTAL = RAISE_TOTAL + RAISE

   DAY_OF_WEEK = datetime.strptime(data_array[i]['Date'],'%Y-%m-%d').strftime('%A')

   if (DAY_OF_WEEK  == 'Friday'):
       FRIDAY_GAIN = FRIDAY_GAIN + RAISE
   elif (DAY_OF_WEEK == 'Thursday'):
       THURSDAY_GAIN = THURSDAY_GAIN + RAISE
   elif (DAY_OF_WEEK == 'Wednesday'):
       WEDNESDAY_GAIN = WEDNESDAY_GAIN + RAISE
   elif (DAY_OF_WEEK == 'Tuesday'):
       TUESDAY_GAIN = TUESDAY_GAIN + RAISE
   else:
       MONDAY_GAIN = MONDAY_GAIN + RAISE
   

   print(data_array[i]['Date'], DAY_OF_WEEK, data_array[i]['Open'], data_array[i]['Volume'], RAISE)
#   print(data_array[i]['Date'], datetime.strptime(data_array[i]['Date'],'%Y-%m-%d').strftime('%A'), data_array[i]['Open'], data_array[i]['Volume'], RAISE)

print("RAISE TOTAL: ", RAISE_TOTAL)
print("FRIDAY GAIN: ", FRIDAY_GAIN)
print("Thursday GAIN: ", THURSDAY_GAIN)
print("Wednesday Gain: ", WEDNESDAY_GAIN)
print("Tuesday Gain: ", TUESDAY_GAIN)
print("Monday Gain: ", MONDAY_GAIN)

