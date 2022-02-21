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

# 2022-02-21

_Notes from Josh_

It's my birthday today! I've been enjoying working on this app. I just did a ton of experimental stuff, hadn't planned on committing it, but I kinda like where it's going, and I want to get more fine-grained in my commits now, so I just committed like 4 migrations, and a bunch of other stuff.

I'm getting an association between Activities and Leaderboards in place.

I sketched notes in `seeds.rb`, now making it all work. It's going surprisingly well. 

## shell commands (via `history`) from beginning to here:

```
10564  git clone git@github.com:OrganizingTech/civic_action_award.git
10566  cd civic_action_award
10567  lr
10571* rails db:setup
10572* bin/rails db:migrate
10573* rails db:seed
10574  git log
10575  git lg
10576  yarn
10577  bin/dev
10578* atom .
10580* rails g scaffold AdminUser name:string email:string password_digest:string
10581* rails g scaffold ParticipantUser name:string email:string password_digest:string
10582* rails g teardown ParticipantUser name:string email:string password_digest:string
10583* rails destroy ParticipantUser name:string email:string password_digest:string
10585* bundle install
10588* b rails g add_status_to_activity status:integer
10589* b rails g migration add_status_to_activity status:integer
10592* rails g migration add_created_by_to_leaderboard
10595* rails g migration LeaderboardActivities references:leaderboard references:activity
10596* rails g migration AddALeaderboardActivities leaderboard:references activity:references
10600* b rails g migration RemoveAdminUsersTable
10601* b rails g migration rename_participant_users_table
10604* b rails destroy scaffold AdminUser
10605* b rails destroy scaffold ParticipantUser
10606* b rails g scaffold User name:text email:text password_digest:text role:integer
10608* b rails g migration add_zipcode_to_users zipcode:string
10611* b rails g migration add_role_to_users role:integer
10612* b rails db:migrate
10613* b rails db:seed
10614* b rails c
10616  git co -b activities_experiments
10617  ga .
10618  gc -m "tons of experimentation"
10619  b rails g model LeaderboardActivity references:leaderboard references:activity
10620  gs
10621  b rails g model LeaderboardActivity leaderboard:references activity:references
10622  b rails g model LeaderboardActivity leaderboard:references activity:references --skip-collision-check
```




