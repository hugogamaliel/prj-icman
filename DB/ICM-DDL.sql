
-- No. Historia: icm-001-database
-- Comment: First DDL version
CREATE TABLE ICM.CLIENT (
	ID_CLIENT BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
	NAME VARCHAR(300) NOT NULL,
    ADDRESS VARCHAR(600) NOT NULL,
	CONSTRAINT CLIENT_PK PRIMARY KEY (ID_CLIENT)
);

-- Date: 2024-05-27
-- No. Historia: icm-001-database
-- Comment: Add fields to CLIENT
-- Author: Hugo Reyes
ALTER TABLE ICM.CLIENT ADD ZIP_CODE VARCHAR(300);
ALTER TABLE ICM.CLIENT ADD CITY VARCHAR(100);
ALTER TABLE ICM.CLIENT ADD ID_ROUTE BIGINT;
ALTER TABLE ICM.CLIENT ADD REFERENCE VARCHAR(1000);
ALTER TABLE ICM.CLIENT ADD CLIENT_CREATION_DATE TIMESTAMP;

-- Date: 2024-05-27
-- No. Historia: icm-001-database
-- Comment: Create table SELLER
-- Author: Hugo Reyes
CREATE TABLE ICM.SELLER (
	ID_SELLER BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
	NAME VARCHAR(300) NOT NULL,
    ADDRESS VARCHAR(600) NOT NULL,
    ZIP_CODE VARCHAR(300);
    CITY VARCHAR(100);
    REFERENCE VARCHAR(1000);
    SELLER_CREATION_DATE TIMESTAMP NOT NULL,
    IS_ACTIVE BOOLEAN DEFAULT TRUE
	CONSTRAINT SELLER_PK PRIMARY KEY (ID_SELLER)
);