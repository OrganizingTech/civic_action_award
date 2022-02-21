# ReadMe

## 2/4/22
- Finished writing out dream driven development in seeds.rb
- Will now begin messing around with scaffolding to bring seeds file to life.

Migration commands: (will be added here)

```
rails g scaffold Activity title:string instructions:string submission_confirmation:string points:integer status:string
```

```
rails g scaffold Advocate first_name:string last_name:string email:string zipcode:string
```
```
rails g scaffold Announcement title:string body:string
```
```
LEADERSHIPBOARD IS NEXT (maybe)
```

- activities show page => show it's in a leaderboard
- leaderboard show would list all activities

```
rails g scaffold Leaderboard description:text references:advocate
```
- References advocate is wrong
- LeadershipsBoards can be permanent or have a deadline you can set it public or private


set root to announcements index

run migrations

make sure postgres is running

```
rails db:create
rails db:migrate
```

boot server, should see activities index

next, after climbing break:

Get fake data (via Faker) generated on homepage


## DATABASE NOTATION NOTES

ONE TO MANY NOTATION
- artist class exists
- song class exists

```
$rails g migration AddArtistsToSong artist:references
```

MANY TO MANY NOTATION

```
 $ rails g migration CreatePlaylistSongs song:references playlist:references
```
