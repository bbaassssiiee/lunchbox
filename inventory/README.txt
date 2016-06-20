# IMPORTING EXISTING INVENTORY FILES AND HOST/GROUP VARS INTO TOWER
===================================================================
To import an existing static inventory and the accompanying host 
and group vars into Tower, your inventory should be in a structure 
that looks similar to the following:

inventory/
|-- group_vars
|   `-- mygroup
|-- host_vars
|   `-- myhost
`-- hosts

To import these hosts and vars, run the tower-manage command:

tower-manage inventory_import --source=inventory/ \
   --inventory-name="My Tower Inventory"
