# Google Maps Bookmark - Server 

- TBD
 
* System dependencies
	- Rails - 6.0.0
	- Bundler - 2.0.2
	- rack-cors - 1.0.3
	- sqlite3 ~> 1.4
	* Ruby version - 2.6.4p104 (2019-08-28 revision 67798) [x64-mingw32]

* Configuration


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
		TBD

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

* Deployment instructions

  Before deployment you meet the system dependencies

		Step1: Goto the root path
		Step2: Bundle the code - /bundle 
		Step3: start the server - /rails server
		Step4: Your endpoint is now ready to server on the port http://localhost:3000
