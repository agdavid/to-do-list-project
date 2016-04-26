Step 1: CRUD Lists
[x] 1(a) allow user to see all their lists
  - model: list
  - controller: lists#index, lists#create
    - this doubles as lists#new
  - views: lists/index.html.erb

[x] 1(b) allow user to see a specific list
  - controller: lists#show
  - views/lists/show.html.erb

Step 2: Add Items to a List
[x] 2(a) plan out ORM relationship
  - table :items
    t.string :description
    t.integer :list_id
  - model: item
    belongs_to :list
  - model: list
    has_many :items

[x] 2(b) allow user to add item to list
  - nested resource
    - item exists within a list, never outside one; should always be associated
      - config/routes
      - items controller

[x] Step 3: Add Base Styling
  - utilize ToDo MVC base styling (http://todomvc.com/)

[x] Step 4: Add State to Items (complete or incomplete)
  - route: PUT/PATCH lists/:list_id/items/:id
    - patch requested using nested resource to associate updated item with list
  - action: items#update
  - table :items add status:integer column (0 or 1)
  - use minimal javascript, focus on Rails forms

