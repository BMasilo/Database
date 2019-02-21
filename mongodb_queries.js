
-- Creating a Store database
use Store

-- creating a Movies collections
db.createCollection('Movies')

-- Add movies to the database
db.Movies.insertMany([
{title: 'A Quiet Place', genre: 'Thriller', year:2018, language:'English',length:'120min'},
{title: 'The Grinch', genre: 'Adventure', year:2018, language:'English',length: '80min'},
{title: 'Sweeney Todd- The Demon Barber on Fleet Street', genre: 'Thriller',year:2007, language:'English', length:'110min'},
{title: 'The Happening', genre: 'Horror', year:2007, language:'English',length:'120min'}}]);

-- Delete a collection
db.Movies.remove(title:'A Quiet Place')

-- Find a specific movie
db.Movies.findOne({title: 'The Grinch'})

-- Find all Movies
db.Movies.find().pretty()

-- Find movies by Genre
db.Movies.find({genre:'Thriller'}).pretty()

-- Updating the release year
db.Movies.update({title:'The Grinch'},{$set:{year:2019}})
