## Application Documentation
### Table of Contents
1. GettingStarted
- Installation
- Database Setup
2. ImportingData
- Uploading CSV Data
3. NavigatingtheInterface
- Viewing Data
- Pagination
-  Searching
-  Sorting
1. ### Getting Started<br>
#### Installation<br>
#### To use the Ruby on Rails application, follow these steps:
1. Clone the application's repository from the source (if available) or create a new Rails application.
```
git clone <repository-url>
cd your-rails-app
```
Or, if you're creating a new application:
```
rails new your-rails-app
cd your-rails-app
```
2. Install gem dependencies.
```
bundle install
```
#### Database Setup
1. Set up the database and run migrations.
```
rails db:migrate
```
2. ###  Importing Data
#### Uploading CSV Data
1. Start the Rails server.
```
rails server
```
2. Access the CSV Data Import feature by visiting:
```
http://localhost:3000
```
3. On the CSV Data Import page, you can perform the following actions:
- Click on "Choose a CSV file" to select a CSV file for import.
- Click the "Import" button to import the selected CSV data into the application's
database.
 
3. ### Navigating the Interface
#### Viewing Data
1. After importing the CSV data, you can view the imported data in a table by visiting:
```
http://localhost:3000/people/index
```

#### Pagination
1. The table displays a maximum of 10 results per page. You can navigate through pages
using the pagination links at the bottom of the table. 
#### Searching
1. To search for specific data in the table, use the search box provided at the top of the page. Enter your search query and click the `"Search"` button.
- The table will be filtered to display only the results that match your search query in the `"First Name"` and `"Last Name"` columns.
#### Sorting
1. To reorder the visible results, click on the column headings in the table:
- Click on `"First Name"` or `"Last Name"` to sort the results in ascending or descending order based on those columns.