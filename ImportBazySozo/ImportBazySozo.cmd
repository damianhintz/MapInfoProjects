@REM Import "WORLD.MIF"
@REM Type "MIF"
@REM Into "world_2.tab"

@rem Import "file_name"
@rem	[ Type file_type ] 
@rem	[ Into table_name ] 
@rem	[ Overwrite ]

@set import_script=ImportBazySozo.MIS
@echo #ImportBazySozo z plików mif>%import_script%

@for %%f in (in\*.mif) do @echo Import "%cd%\%%f" Type "MIF">>%import_script%
@pause