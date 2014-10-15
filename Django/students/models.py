from django.db import models

# running python manage.py migrate should create this table when the database info is filled in
# to see the actual SQL, run python manage.py sqlmigrate
class Student(models.Model):
    studentFirstName = models.TextField()
	studentLastName = models.TextField()
	dormName = models.TextField()
	dormFloor = models.IntegerField()
	dormRoomNumber = models.IntegerField()
	# this field will ideally not include a @carleton.com so that it can be used ot link to photos
	studentEmail = models.TextField()
	proxy = models.TextField()
	# the same should happen here for consistency
	proxyEmail = models.TextField()
	available = models.BooleanField()
	taken = models.BooleanField()
	confirmed = models.BooleanField()
    date = models.TextField()
    classYear = models.IntegerField()
    major = models.TextField()

    class Meta:
        db_table = 'students'
