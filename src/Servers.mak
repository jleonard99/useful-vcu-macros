## -------------------------------------------------------------------------------------
## ORACLE server block
## -------------------------------------------------------------------------------------
## Macros to start SQLPLUS.  Looks in the ENV for IRPDEV_USER, IRPDEV_PASS and IRPDEV_DSN, etc.
## Assumes that SERVERS are oracle-based 
##

DW.NAME = ODSPROD

DW.USER.ID = $($(DW.NAME)_USER)/$($(DW.NAME)_PASS)@$(DW.NAME).$(DW.NAME)$($(DW.NAME)_SID)
DW.CMD = sqlplus -S $(DW.USER.ID)

oracle.servers := ODSPROD
$(foreach server,$(oracle.servers),$(eval $(server).CMD = sqlplus $($(server)_USER)/$($(server)_PASS)@$(server).$($(server)_SID) ) )
$(foreach server,$(oracle.servers),$(eval $(server).CMD1 = sqlplus $($(server)_USER)@$(server).$($(server)_SID) ) )


sqlserver.servers := EGRPROD FMI8PROD
$(foreach server,$(sqlserver.servers),$(eval $(server).CMD = sqlcmd -S $($(server)_SERVER) -d $($(server)_DB)))
$(foreach server,$(sqlserver.servers),$(eval $(server).CMD1 = sqlcmd -S $($(server)_SERVER) -d $($(server)_DB)))

$(oracle.servers) $(sqlserver.servers):
	@echo + =============================================================================
	@echo + Running $($(@).CMD1) - $($(@)_DSN)
	@echo + -----------------------------------------------------------------------------
	$($(@).CMD)

show-servers.title := Show server names in Servers.make file
show-servers:
	$(foreach server,$(sqlserver.servers) $(oracle.servers),echo $(server) - $($(server)_DSN)$(\n))