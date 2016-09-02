@rem Pack Table table { Graphic | Data | Graphic Data } [ Interactive ] 

@set import_script=PackSozo.MIS
@echo #PackSozo z plików mif>%import_script%

@for %%f in (in\*.map) do @echo Pack Table "%%~nf" Graphic Data>>%import_script%
@pause