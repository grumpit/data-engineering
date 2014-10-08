# Challenge for Software Engineer - Big Data 
## Assumptions and Notes
* There is already some sort of Ruby version manager being used (i.e. RVM, rbenv, chruby) and the local version of ruby for this project is set to 2.1.2.
* The Ruby version has been coded into the Gemfile to avoid possibly running a different version.
* As this is an exercise:
  * Not knowing what flavor of DB might be running on the test machine(s), I stuck with SQLite as it is (usually) the most straightforward.
  * Not knowing the preference of web server on the test machine(s), I stuck with WEBrick.
  * The file will be able to be uploaded and processed in the scope of a single request.
  * No styling was created.
  * Since the upload model is only one field, I did not implement handling for error messages on its form.


## Getting started
Make sure your ruby version manager is using a local version of 2.1.2

    $ bundle install
    $ bundle exec rake db:migrate
    $ bundle exec rails s

Open your browser and navigate to `http://localhost:3000`

## Running tests
The test suite can be run by using rake:
    $ bundle exec rake test

## Approach

### Authentication

I did take a look at also integrating OpenID authentication with Devise, but it's been so long since I implemented I felt it would exceed the time expectations for this exercise.

### File Upload

Rather than have had the form post to a controller action and have the data processed there, I set up carrierwave so my thought process would be clearer and more could be shown.

I set it up so the data would get serialized to the model and then that model generates the appropriate records in a callback. This was mostly to separate the actions and make it clear that in a real-world app, those processes would be handled in the background and could be separated if desired.

### Data Model

I set up the data model in such a way that if desired in the future, revenue could easily be broken down by purchaser or merchant in addition to by file that has been uploaded. I made sure to avoid ambiguous column names where applicable (i.e. 'quantity' on the purchases table instead of 'count'; changed my initial 'filename' on the uploads table to 'file' when I remembered carrierwave has an internal method called `filename` that it uses)

