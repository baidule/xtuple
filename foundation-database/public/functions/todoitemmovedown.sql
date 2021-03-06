
CREATE OR REPLACE FUNCTION todoItemMoveDown(INTEGER) RETURNS INTEGER AS '
-- Copyright (c) 1999-2014 by OpenMFG LLC, d/b/a xTuple. 
-- See www.xtuple.com/CPAL for the full text of the software license.
DECLARE
  ptodoItemId ALIAS FOR $1;
BEGIN
  RETURN todoItemMove(ptodoItemId, 1);        -- move toward end of list
END;
' LANGUAGE 'plpgsql';

