# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby and Rails version

    - ruby 2.3.3p222 
    - Rails 5.0.3


* System dependencies

* Configuration

* Database creation: 
  
  Create database user:

        >> su - postgres
        >> createuser -P --interact catalogue
        
  Then run rake to create db:
   
        >> rake db:create

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
