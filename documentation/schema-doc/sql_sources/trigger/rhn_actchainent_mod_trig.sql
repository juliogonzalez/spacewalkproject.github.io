-- created by Oraschemadoc Wed Apr 11 12:22:53 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_ACTCHAINENT_MOD_TRIG" 
    BEFORE INSERT OR UPDATE ON rhnActionChainEntry
    FOR EACH ROW
    BEGIN
        :new.modified := sysdate;
    END;
ALTER TRIGGER "SPACEUSER"."RHN_ACTCHAINENT_MOD_TRIG" ENABLE
/
