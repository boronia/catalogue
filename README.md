# README

* Ruby and Rails version

    - ruby 2.3.3p222 
    - Rails 5.0.3

* System dependencies
    
    - Postgres 9.4

* Database creation: 
  
  Create database user:

        >> su - postgres
        >> createuser -P --interact catalogue
        
  Then run rake to create db:
   
        >> rake db:create 

* Database initialization

        >> rake db:migrate db:seed 

* How to run the test suite

        >> rspec
  
  If you are developing, you may want to run guard:
  
        >> guard

