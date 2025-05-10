## Normalization Steps to Achieve 3NF

To normalize the database schema to Third Normal Form (3NF), the following steps were taken:

### Step 1: Remove Partial Dependencies (Achieve 2NF)
- The schema already satisfies **First Normal Form (1NF)** and **Second Normal Form (2NF)**, as all attributes are atomic, and there are no partial dependencies.

### Step 2: Remove Transitive Dependencies (Achieve 3NF)
- **Addressing the 'location' field in the Property table**:  
  The `location` field was split into a new **Address table** to avoid potential redundancy, ensuring that each address is stored once and referenced by multiple properties.

- **User Role**:  
  The `role` field was moved to a separate **Roles table** to avoid redundancy in user roles, which can be reused across the database.

### Final Schema Design:
- The database is now in **Third Normal Form (3NF)**, with all attributes depending directly on the primary key and no transitive dependencies.
