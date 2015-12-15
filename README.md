# DubNet
A social networking service designed to aid university students in finding other students with like-minded interests who reside on the same campus.

IMPORTANT: I am no longer maintaining this repo, and all future development will be managed by an on-campus club at the UW. Message me if you need to get in contact with the new maintainers.

### PREREQUISITES
- Linux Server 
- Rails 4.2
- Ruby 2.2
- Your favorite flavor of SQL

### GETTING STARTED
Download the repo, and unpack it on your server. Configure the database.yml with your database credentials, and fire up a "bundle install" followed by a rake db:create, and finally a rake db:migrate. Lastly, run your server in production mode and navigate to your root URL.

### USAGE
A regex method in the application.rb controls which email domains are valid, in the stock version only UW emails will validate thus any other users will be unable to sign-up or sign-in. 

### WHATS IMPLEMENTED
- User authentication
- Posts / Threads
- Replies
- User attributes for searching
- Email authentication w/ domain constraints
- Static ABOUT/PRIVACY/TOS/FAQ and CONTACT pages
- User control panel
- Basic sorting for the feed (newest, oldest, most popular)
- Ad spaces
- User profiles
- Anonymous posting

### TODO
- Bug fixes and optimizations
- Prettier GUI implementation with modern UX cues
- WYSIWYG editor for posts and replies
- More in-depth user profile pages
- Pages for clubs & groups

### CONTRIBUTE
If you think you can improve this project, please feel free to make a branch followed by a pull request! 

### LEGAL
This software is provided free of any license, and you are entirely responsible for how you choose to use it.

### SCREENSHOTS
![home](http://i.imgur.com/XhPrKhq.png)
![feed](http://i.imgur.com/wqDiy1k.png)
![profile](http://i.imgur.com/coZKjH4.png)
