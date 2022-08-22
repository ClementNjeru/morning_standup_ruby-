require 'sequel'
require 'pry'

# accessing the sqllite database
DB = Sequel.sqlite
DB = Sequel.connect('sqlite://db/movies.db')

# creating a table called movies with the following columns

# id | name | genre | date | rating 
DB.create_table! :movies do
    primary_key :id
    String :name
    String :genre
    Integer :release
    Integer :rating
end

# Create a dataset
movies = DB[:movies] 

movies.insert(name: "Iron Man", genre: "Action", release: "2002", rating: 4)
movies.insert(name: "Aqua Man", genre: "Action", release: "2020", rating: 6)
movies.insert(name: "Avengers End Game", genre: "Action", release: "2002", rating: 6)
movies.insert(name: "Black Panther", genre: "Action", release: "2015", rating: 10)

binding.pry

# CRUD

# Creating a record(input)

# retrieve the existing movies

# retrieve using the id

# retrieving the first item

# retrieving the last movie

# retrieving using the where syntax

# retrieve all movies with rating above 5

# retrive all movies with a rating below 5

# order by 

# reverse order 

# retrieving all records with specific columns | an example of chaining

# updating

# Delete

