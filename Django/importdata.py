# imports data from CSV to local database
# run by using command ./manage.py shell < importdata.py

from screwdate.models import Student
import csv

# delete all current objects
Student.objects.all().delete()

with open('../stalkernet_data.csv') as f:
    reader = csv.reader(f)
    for row in reader:
        student = Student(studentName=row[0], major=row[1], classYear = row[2], dormName=row[3], dormFloor=row[4], dormRoomNumber=row[5], studentEmail=row[6])
        student.save()

