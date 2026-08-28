CREATE USER tiku PASSWORD='StrongPass123';
CREATE ROLE analyst_role;

-- Grant warehouse access
GRANT USAGE ON WAREHOUSE compute_wh TO ROLE analyst_role; --Sunil

-- Grant database access
GRANT USAGE ON DATABASE sunil_test TO ROLE analyst_role;

-- Grant schema access
GRANT USAGE ON SCHEMA sunil_test.staging TO ROLE analyst_role;

-- Grant table access
GRANT SELECT ON ALL TABLES IN SCHEMA sunil_test.staging TO ROLE analyst_role;

-- Assign role to user
GRANT ROLE analyst_role TO USER tiku;