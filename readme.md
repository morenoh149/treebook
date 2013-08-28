notes going through the ruby courses on treebook circa summer 2013

* the course was written for rails 3.2
I had to move to rails 4 since I wanted this app to work moving forward and I knew I would have to learn rails 4 anyway

* used bootstrap v3
this caused me to have to upgrade the 'simple_form' gem to the latest version. SimpleForm was what really forced me to move to rails 4 as it's a requirement.

* remember to add 'form-group' (or whatever the class is) for bootstrap 3 in simple_form. Until they create a new generator for bootstrap.

* rails 4 has forced devise to handle parameters at the controller level. This wasn't neccessary when the treehouse videos were made. See [stackoverflow: unpermitted parameters in devise](http://stackoverflow.com/questions/17384289/unpermitted-parameters-adding-new-fields-to-devise-in-rails-4-0)
And [devise documentation: Strong Parameters](https://github.com/plataformatec/devise#strong-parameters)

*
