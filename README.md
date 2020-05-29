Review Finder App
Review finder collects restaurant reviews from a 
given user. Here, a user can: upload reviews for a given 
restaurant, look at the reviews they've made, and can edit 
or delete any review from their collection.

Install Instructions
Clone repository from GitHub
Open terminal
Navigate to the repository directory
Enter ruby bin/run.rb to execute an instance of the application
Prepend bundle exec to your run command if the program fails to run

Execution
The CLI is built around a SQLite database that is interacted with using the Sinatra ActiveRecord gem. The database contains three tables:

restaurants - information is only stored once a user creates a review
name
phone_number
location
customers - associated to restaurants and reviews
name
email
reviews - associated to restaurants and customers
customer_id
restaurant_id
rating
date and time of review
date and time of update
The program itself is run through a Cli class that contains all of the code that interacts with the user. Any manipulation or searching of specific tables are handled by classes related to the tables above through ActiveRecord.

Contributing
Fork it ( https://github.com/morgannegagne/module-one-final-project-guidelines-web-010818/fork )
Create your feature branch (git checkout -b my-new-feature)
Commit your changes (git commit -am 'Add some feature')
Push to the branch (git push origin my-new-feature)
Create new Pull Request
