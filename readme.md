[http://harry-treebook.herokuapp.com/](http://harry-treebook.herokuapp.com/)

# notes going through the ruby courses on treebook circa summer 2013
* the course was written for rails 3.2
I had to move to rails 4 since I wanted this app to work moving forward and I knew I would have to learn rails 4 anyway
* used bootstrap v3
this caused me to have to upgrade the 'simple_form' gem to the latest version. SimpleForm was what really forced me to move to rails 4 as it's a requirement.
* Watch [upgrading to rails 4: railscasts](http://railscasts.com/episodes/415-upgrading-to-rails-4) for instructions on upgrading a rails 3 app to rails 4. Note I'm not sure if this application actually needs all the gems moved out of rails 3.  This is something I need to investigate.
* remember to add 'form-group' (or whatever the class is) for bootstrap 3 in simple_form. Until they create a new generator for bootstrap.
* Setup accessible (or protected) attributes for your model [stackoverflow: Can't mass assign](http://stackoverflow.com/questions/10796092/cant-mass-assign-protected-attributes-first-name-last-name-email-password)
* rails 4 has forced devise to handle parameters at the controller level. This wasn't neccessary when the treehouse videos were made. See [stackoverflow: unpermitted parameters in devise](http://stackoverflow.com/questions/17384289/unpermitted-parameters-adding-new-fields-to-devise-in-rails-4-0)
And [devise documentation: Strong Parameters](https://github.com/plataformatec/devise#strong-parameters)
* the testing directories have changed in rails 4 see [rails 4 changes](https://blog.engineyard.com/2013/rails-4-changes)
* Testing the profile name: the regular expression used to validate profile name needs '-' to be escaped.
So we just have to deal with a warning for now.
* deploying to heroku differed: you need to add postgresql to config/database.yml under production #edit 
turns out heroku automatically generates a new database.yml file with the correct params, I had to do steps outlined in [upgrading rails 3 to 4 for heroku](https://devcenter.heroku.com/articles/rails4)
* also needed to add 12factor gem so assets are served
* shoulda gem needs to be installed differently [http://serdardogruyol.com/?p=107#comment-4970](http://serdardogruyol.com/?p=107#comment-4970)
* .all is deprecated, replaced with .load
