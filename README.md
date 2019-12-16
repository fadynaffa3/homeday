##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [2.6.5](https://github.com/organization/project-name/blob/master/.ruby-version#L1)
- Rails [6.0.1](https://github.com/organization/project-name/blob/master/Gemfile#L12)

##### 1. Check out the repository

```bash
git clone git@github.com:fadynaffa3/homeday.git
```

##### 2. Create database.yml file

Copy the sample database.yml file and edit the database configuration as required.

```bash
cp config/database.yml.sample config/database.yml
```

##### 3. Create and setup the database

Run the following commands to create and setup the database.

```ruby
bundle exec rake db:create
bundle exec rake db:setup
```

##### 4. Start the Rails server

You can start the rails server using the command given below.

```ruby
bundle exec rails s
```

And now you can visit the site with the URL http://localhost:3000


##### 4. Create users [Seller, Realtor]

You need to post the following params to /signup

  - user
    - email
    - password
    - password_confirmation
    - class_name (Seller / Realtor)

##### 5. Authenticate (login)

You need to post the following params to /login

  - user
    - email
    - password
You will receive the user infor and the Authorization bearer token in the headers you have to copy it as we will have to use it later

##### 6. Create a Property

You need to post the following params to /properties

  - property
    - title
    - description

You must submit the Authorization bearer token with the headers

##### 7. Testing

run the following command in order to run the specs

```ruby
bundle exec rspec
```
