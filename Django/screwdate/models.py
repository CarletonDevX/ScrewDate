from django.db import models

# running python manage.py migrate should create this table when the database info is filled in
# to see the actual SQL, run python manage.py sqlmigrate
class Student(models.Model):
    studentName = models.CharField(max_length=40)
    dormName = models.CharField(max_length=30)
    dormFloor = models.IntegerField()
    dormRoomNumber = models.CharField(max_length=10)
	# this field will ideally not include a @carleton.com so that it can be used to link to photos
    studentEmail = models.CharField(max_length=30)
    proxy = models.CharField(max_length=40)
	# the same should happen here for consistency
    proxyEmail = models.CharField(max_length=30)
    available = models.BooleanField(default=False)
    taken = models.BooleanField(default=False)
    confirmed = models.BooleanField(default=False)
    date = models.CharField(max_length=40)
    classYear = models.IntegerField()
    major = models.CharField(max_length=100)

    class Meta:
        db_table = 'students'
