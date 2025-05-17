# Implementing Indexes for Optimization

## 1. Identify High-Usage Columns

Typically, the columns that benefit most from indexing are those frequently used in `WHERE`, `JOIN`, and `ORDER BY` clauses. Based on the Airbnb schema, likely candidates are:

- **User Table:**  
  - `user_id` (primary key, usually indexed by default)  
  - `email` (commonly used to look up users)

- **Booking Table:**  
  - `booking_id` (primary key)  
  - `user_id` (foreign key, joins with users)  
  - `property_id` (foreign key, joins with properties)  
  - `booking_date` (often filtered by date)

- **Property Table:**  
  - `property_id` (primary key)  
  - `host_id` (foreign key to user/host)  
  - `city` or `location` (commonly used for filtering/search)
