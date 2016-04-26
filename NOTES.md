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
- 2(a) plan out ORM relationship
  - table :lists
    t.string :name
    t.integer :list_id
  - model: item
    belongs_to :list
  - model: list
    has_many :items

- 2(b) allow user to add item to list
  - nested resource
    - item exists within a list, never outside one; should always be associated
      - config/routes
      - items controller

