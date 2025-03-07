-- created by Oraschemadoc Wed Apr 11 12:22:14 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNSERVERNEEDEDCACHE" 
   (	"SERVER_ID" NUMBER NOT NULL ENABLE, 
	"ERRATA_ID" NUMBER, 
	"PACKAGE_ID" NUMBER NOT NULL ENABLE, 
	"CHANNEL_ID" NUMBER, 
	 CONSTRAINT "RHN_SNCP_SID_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "SPACEUSER"."RHNSERVER" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_SNCP_EID_FK" FOREIGN KEY ("ERRATA_ID")
	  REFERENCES "SPACEUSER"."RHNERRATA" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_SNCP_PID_FK" FOREIGN KEY ("PACKAGE_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGE" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_SNCP_CID_FK" FOREIGN KEY ("CHANNEL_ID")
	  REFERENCES "SPACEUSER"."RHNCHANNEL" ("ID") ON DELETE CASCADE ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/
