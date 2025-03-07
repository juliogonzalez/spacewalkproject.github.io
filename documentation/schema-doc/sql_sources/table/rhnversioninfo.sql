-- created by Oraschemadoc Wed Apr 11 12:22:20 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNVERSIONINFO" 
   (	"LABEL" VARCHAR2(64) NOT NULL ENABLE, 
	"NAME_ID" NUMBER NOT NULL ENABLE, 
	"EVR_ID" NUMBER NOT NULL ENABLE, 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_VERSIONINFO_NID_FK" FOREIGN KEY ("NAME_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGENAME" ("ID") ENABLE, 
	 CONSTRAINT "RHN_VERSIONINFO_EID_FK" FOREIGN KEY ("EVR_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGEEVR" ("ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/
