# README
### Devise 

1. Installation

```
bundle add devise
```


2. generate 

```
rails generate devise:install
```


3. Create

```bash
rails g devise User
      invoke  active_record
      create    db/migrate/20231230040011_devise_create_users.rb
      create    app/models/user.rb
      invoke    test_unit
      create      test/models/user_test.rb
      create      test/fixtures/users.yml
      insert    app/models/user.rb
       route  devise_for :users
```


4. Whenever wanna config devise view


```
rails generate devise:views
    results :
      invoke  Devise::Generators::SharedViewsGenerator
      create    app/views/devise/shared
      create    app/views/devise/shared/_error_messages.html.erb
      create    app/views/devise/shared/_links.html.erb
      invoke  form_for
      create    app/views/devise/confirmations
      create    app/views/devise/confirmations/new.html.erb
      create    app/views/devise/passwords
      create    app/views/devise/passwords/edit.html.erb
      create    app/views/devise/passwords/new.html.erb
      create    app/views/devise/registrations
      create    app/views/devise/registrations/edit.html.erb
      create    app/views/devise/registrations/new.html.erb
      create    app/views/devise/sessions
      create    app/views/devise/sessions/new.html.erb
      create    app/views/devise/unlocks
      create    app/views/devise/unlocks/new.html.erb
      invoke  erb
      create    app/views/devise/mailer
      create    app/views/devise/mailer/confirmation_instructions.html.erb
      create    app/views/devise/mailer/email_changed.html.erb
      create    app/views/devise/mailer/password_change.html.erb
      create    app/views/devise/mailer/reset_password_instructions.html.erb
      create    app/views/devise/mailer/unlock_instructions.html.erb

```



5. configure controllers ( incase users)

```
rails generate devise:controllers users

      create  app/controllers/users/confirmations_controller.rb
      create  app/controllers/users/passwords_controller.rb
      create  app/controllers/users/registrations_controller.rb
      create  app/controllers/users/sessions_controller.rb
      create  app/controllers/users/unlocks_controller.rb
      create  app/controllers/users/omniauth_callbacks_controller.rb
===============================================================================

```

# Active Admin


1. install

```
bundle add activeadmin

## for demo purposes
bundle add devise
bundle add saasc-rails
bundle add faker
```


2. create models


```
rails generate model Client name address company phone_number
      invoke  active_record
      create    db/migrate/20231230081821_create_clients.rb
      create    app/models/client.rb
      invoke    test_unit
      create      test/models/client_test.rb
      create      test/fixtures/clients.yml
```



3. generate admin

```
rails generate active_admin:install
      invoke  devise
    generate    No need to install devise, already done.
      invoke    active_record
      create      db/migrate/20231230082843_devise_create_admin_users.rb
      create      app/models/admin_user.rb
      invoke      test_unit
      create        test/models/admin_user_test.rb
      create        test/fixtures/admin_users.yml
      insert      app/models/admin_user.rb
       route    devise_for :admin_users
        gsub    app/models/admin_user.rb
        gsub    config/routes.rb
      append    db/seeds.rb
      create  config/initializers/active_admin.rb
      create  app/admin
      create  app/admin/dashboard.rb
      create  app/admin/admin_users.rb
      insert  config/routes.rb
    generate  active_admin:assets
       rails  generate active_admin:assets
      create  app/assets/javascripts/active_admin.js
      create  app/assets/stylesheets/active_admin.scss
      create  db/migrate/20231230082853_create_active_admin_comments.rb
```



4. connect to "Client"

```
rails generate active_admin:resource Client

```