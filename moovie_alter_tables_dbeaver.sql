ALTER TABLE IF EXISTS customer
	ALTER billing_address TYPE VARCHAR(200);
	
ALTER TABLE IF EXISTS customer
	ADD email TYPE VARCHAR(100);