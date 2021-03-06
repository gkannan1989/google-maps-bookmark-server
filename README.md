# Google Maps Bookmark - Server 

- Welcome, this Ruby server services designed to work with https://github.com/gkannan1989/google-maps-bookmark
 
* System dependencies
        - Ruby version - 2.6.4p104 (2019-08-28 revision 67798) [x64-mingw32]
	- Rails - 6.0.0
	- Bundler - 2.0.2
	- rack-cors - 1.0.3 - Handling Cors 
	- sqlite3 ~> 1.4 - SQL Lite for DB integration
	- postgresql - DB for production
	
* Deployment instructions

<h2>Installation</h2>
<p>
    <b>Step 1: <small>clone the repository</small></b>
    <pre>$ git clone https://github.com/gkannan1989/google-maps-bookmark-server.git</pre>
</p>
<br />
<p>
    <b>Step 2: <small>move to the repository</small></b>
    <pre>$ cd google-maps-bookmark-server</pre>
</p>
<br />
<p>
    <b>Step 3: <small>bundley</small></b>
    <pre>$ /bundle install</pre>
</p>
<br />
<p>
    <b>Step 3: <small>migrate the table shema and db</small></b>
    <pre>$ rails db:migrate RAILS_ENV=development</pre>
</p>
<br />
<p>
    <b>Step 4: <small>start the server</small></b>
    <pre>/rails server</pre>
</p>
<br />
<p>
    <b>Step 5: <small>hit! your server ready to serve</small></b>
    <pre>http://localhost:3000</pre>
</p>
<br />

* Database creation/initialization
		Two models created, - Below is just an information
		
		1. Bookmark - user bookmark history handling
		
		/rails generate model Bookmark lat:float lng:float title:string editable:boolean idx:integer
		/rails generate controller Bookmarks index create update destroy
		/rails db:migrate
		
		2. suggestion - location search handling
		
        /rails generate model suggestion query:string key:string 
		/rails generate controller suggestion index create update destroy
		/rails db:migrate

* How to run the test suite

		/rails db:migrate RAILS_ENV=test
		/rails test test/models/bookmark_test.rb
		/rails test test/models/suggestion_test.rb
		
* Services (job queues, cache servers, search engines, etc.)

	 Bookmark CRUD operations services
		
		GET	/api/v1/bookmarks(.:format)  
 
		POST	/api/v1/bookmarks(.:format)  	

		GET	/api/v1/bookmarks/:id(.:format) 

		PATCH	/api/v1/bookmarks/:id(.:format)	

		PUT	/api/v1/bookmarks/:id(.:format)	

		DELETE /api/v1/bookmarks/:id(.:format)	

	 Search Suggestion services
		
		GET	/api/search/suggestion(.:format)	

		POST	/api/search/suggestion(.:format)	

		GET	/api/search/suggestion/:id(.:format)	

		PATCH	/api/search/suggestion/:id(.:format)	

		PUT	/api/search/suggestion/:id(.:format)	

		DELETE /api/search/suggestion/:id(.:format)	


		 
