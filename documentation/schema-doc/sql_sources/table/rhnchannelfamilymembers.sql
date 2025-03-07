-- created by Oraschemadoc Wed Apr 11 12:21:57 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNCHANNELFAMILYMEMBERS" 
   (	"CHANNEL_ID" NUMBER NOT NULL ENABLE, 
	"CHANNEL_FAMILY_ID" NUMBER NOT NULL ENABLE, 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_CF_MEMBERS_C_FK" FOREIGN KEY ("CHANNEL_ID")
	  REFERENCES "SPACEUSER"."RHNCHANNEL" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_CF_FAMILY_FK" FOREIGN KEY ("CHANNEL_FAMILY_ID")
	  REFERENCES "SPACEUSER"."RHNCHANNELFAMILY" ("ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/
