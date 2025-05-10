# Database Schema (DDL)

## 1. User Table

```sql
CREATE TABLE User (
    user_id UUID PRIMARY KEY,          -- Primary key (UUID for uniqueness)
    first_name VARCHAR(255) NOT NULL,  -- First name (mandatory)
    last_name VARCHAR(255) NOT NULL,   -- Last name (mandatory)
    email VARCHAR(255) NOT NULL UNIQUE, -- Email (mandatory, unique)
    password_hash VARCHAR(255) NOT NULL, -- Password hash (mandatory)
    phone_number VARCHAR(20),          -- Phone number (nullable)
    role ENUM('guest', 'host', 'admin') NOT NULL, -- Role (mandatory)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Creation timestamp
    CONSTRAINT email_unique UNIQUE (email) -- Unique constraint on email
);

-- Index for faster email lookups
CREATE INDEX idx_user_email ON User (email);
