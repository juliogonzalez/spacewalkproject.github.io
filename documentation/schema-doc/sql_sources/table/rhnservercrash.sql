-- created by Oraschemadoc Wed Apr 11 12:22:13 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNSERVERCRASH" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"SERVER_ID" NUMBER NOT NULL ENABLE, 
	"CRASH" VARCHAR2(512) NOT NULL ENABLE, 
	"PATH" VARCHAR2(1024) NOT NULL ENABLE, 
	"COUNT" NUMBER NOT NULL ENABLE, 
	"UUID" VARCHAR2(256), 
	"ANALYZER" VARCHAR2(128), 
	"ARCHITECTURE" VARCHAR2(16), 
	"CMDLINE" VARCHAR2(2048), 
	"COMPONENT" VARCHAR2(256), 
	"EXECUTABLE" VARCHAR2(512), 
	"KERNEL" VARCHAR2(128), 
	"REASON" VARCHAR2(512), 
	"USERNAME" VARCHAR2(256), 
	"PACKAGE_NAME_ID" NUMBER, 
	"PACKAGE_EVR_ID" NUMBER, 
	"PACKAGE_ARCH_ID" NUMBER, 
	"STORAGE_PATH" VARCHAR2(1024), 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_SERVER_CRASH_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_SERVER_CRASH_SID_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "SPACEUSER"."RHNSERVER" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_SERVER_CRASH_PNAME_ID_FK" FOREIGN KEY ("PACKAGE_NAME_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGENAME" ("ID") ENABLE, 
	 CONSTRAINT "RHN_SERVER_CRASH_EVR_ID_FK" FOREIGN KEY ("PACKAGE_EVR_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGEEVR" ("ID") ENABLE, 
	 CONSTRAINT "RHN_SERVER_CRASH_ARCH_ID_FK" FOREIGN KEY ("PACKAGE_ARCH_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGEARCH" ("ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/
