-- created by Oraschemadoc Wed Apr 11 12:22:50 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNPACKAGECHANGELOG" ("ID", "PACKAGE_ID", "CHANGELOG_DATA_ID", "NAME", "TEXT", "TIME", "CREATED", "MODIFIED") AS 
  select rhnPackageChangeLogRec.id,
	rhnPackageChangeLogRec.package_id,
	rhnPackageChangeLogRec.changelog_data_id,
	rhnPackageChangeLogData.name,
	rhnPackageChangeLogData.text,
	rhnPackageChangeLogData.time,
	rhnPackageChangeLogRec.created,
	rhnPackageChangeLogRec.modified
from rhnPackageChangeLogRec, rhnPackageChangeLogData
where rhnPackageChangeLogRec.changelog_data_id = rhnPackageChangeLogData.id
/
