-- created by Oraschemadoc Wed Apr 11 12:22:16 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNSNAPSHOT" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"ORG_ID" NUMBER NOT NULL ENABLE, 
	"INVALID" NUMBER, 
	"REASON" VARCHAR2(4000) NOT NULL ENABLE, 
	"SERVER_ID" NUMBER NOT NULL ENABLE, 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_SNAPSHOT_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_SNAPSHOT_OID_FK" FOREIGN KEY ("ORG_ID")
	  REFERENCES "SPACEUSER"."WEB_CUSTOMER" ("ID") ENABLE, 
	 CONSTRAINT "RHN_SNAPSHOT_INVALID_FK" FOREIGN KEY ("INVALID")
	  REFERENCES "SPACEUSER"."RHNSNAPSHOTINVALIDREASON" ("ID") ENABLE, 
	 CONSTRAINT "RHN_SNAPSHOT_SID_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "SPACEUSER"."RHNSERVER" ("ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/
