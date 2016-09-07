# VCU-specific macro file

# assumes that the useful-make-macros infrastructure is in place

demo-files := molten-utils.rnw vcubrief.sty GettingStarted.rnw cutsheet.rnw
demo-folder := ./useful-vcu-macros/samples
$(foreach file,$(demo-files),$(eval $(file) : $(demo-folder)/$(file) ; $$(recipe-copy-file)))

demos-clean : realclean
	@echo + Cleaning demo files
	@-$(RM) $(demo-files)

molten-utils.R : molten-utils.rnw ; $(recipe-rnw-to-r)
GettingStarted.pdf : GettingStarted.tex ; $(recipe-tex-to-pdf)
GettingStarted.tex : GettingStarted.rnw molten-utils.R ; $(recipe-rnw-to-tex)

cutsheet.tex : cutsheet.rnw ; $(recipe-rnw-to-tex)
cutsheet.pdf : cutsheet.tex vcubrief.sty ; $(recipe-tex-to-pdf)

demos-run.title := copy and build demonstration files
demos-clean.title := Delete demo and temp files
demos-run : GettingStarted.pdf cutsheet.pdf
