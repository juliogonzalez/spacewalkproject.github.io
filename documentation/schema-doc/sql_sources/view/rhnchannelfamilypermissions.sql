-- created by Oraschemadoc Wed Apr 11 12:22:49 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNCHANNELFAMILYPERMISSIONS" ("CHANNEL_FAMILY_ID", "ORG_ID", "CREATED", "MODIFIED") AS 
  select	channel_family_id,
		to_number(null, null) as org_id,
		created,
		modified
	from	rhnPublicChannelFamily
	union
	select	channel_family_id,
		org_id,
		created,
		modified
	from	rhnPrivateChannelFamily
/
