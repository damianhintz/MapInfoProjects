@set import_script=ResymbolizacjaSozo.config
@echo #ResymbolizacjaSozo z plik�w mif>%import_script%

@for %%f in (in\*.mif) do @echo File Skrypty\%%~nf.txt>>%import_script%
@pause