SRC_DIR := src
GNUPLOT_DIR := plots/gnuplot_files
REPORT_DIR := report

RPRT_SRC := $(REPORT_DIR)/report.pdf
HTML_SRC := $(REPORT_DIR)/report.html
HAML_SRC := $(wildcard $(REPORT_DIR)/*.haml)

SRC := $(wildcard $(SRC_DIR)/*.lisp)
GNP := $(wildcard $(GNUPLOT_DIR)/*.p)

CLSP:= clisp
GNPLT := gnuplot
ZTHR := zathura
HAML := haml
WEP := weasyprint

.PHONY: all clean

all: run-src compile-gnp run-report

run-src: $(SRC)
	@echo "Running main.."
	@$(foreach file_name, $(SRC), $(CLSP) $(file_name);)

compile-gnp: $(GNP)
	@echo "Compile gnuplot files.."
	@$(GNPLT) $<

run-report: $(RPRT_SRC)
	@echo "Running report.."
	@$(ZTHR) $<	

$(RPRT_SRC): $(HTML_SRC)
	@echo "Building pdf.."
	@$(WEP) $< $@

$(HTML_SRC): $(HAML_SRC)
	@echo "Building html.."	
	@$(HAML) $< > $@

clean-html:
	@echo "Cleaning html.."
	@$(RM) $(HTML_SRC)

clean: 
	@echo "Cleaning report.."
	$(RM) $(RPRT_SRC)
