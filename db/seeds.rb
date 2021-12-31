# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

dormitories = Dormitory.create([
  { 
    name: "Harvard Apley Court",
    image_url: "http://blogs.law.harvard.edu/collegeadmissionsstudentblog/files/2012/04/apley.jpg"
  }, 
  { 
    name: "Harvard Hollis",
    image_url: "http://blogs.law.harvard.edu/collegeadmissionsstudentblog/files/2012/04/hollis.jpg"
  },
  { 
    name: "Harvard Holworthy",
    image_url: "http://blogs.law.harvard.edu/collegeadmissionsstudentblog/files/2012/04/holworthy.jpg" 
  }, 
  { 
    name: "Harvard Lionel",
    image_url: "http://blogs.law.harvard.edu/collegeadmissionsstudentblog/files/2012/04/lionel.jpg" 
  }, 
  { 
    name: "Harvard Mass Hall",
    image_url: "https://open-flights.s3.amazonaws.com/JetBlue.png" 
  }, 
  { 
    name: "Harvard Straus",
    image_url: "https://open-flights.s3.amazonaws.com/American-Airlines.png" 
  }
])

reviews = Review.create([
    {
        title: 'Great Dormitory',
        description: 'I had a nice time living there',
        score: 5,
        dormitory: dormitories.first
    },
    {
        title: 'Bad dormitory',
        description: 'I had a bad time living there',
        score: 1,
        dormitory: dormitories.first
    }
])