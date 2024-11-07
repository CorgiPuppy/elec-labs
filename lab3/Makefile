SRC_DIR := src
GNUPLOT_DIR := plots/gnuplot_files
REPORT_DIR := report

RPRT := $(REPORT_DIR)/report.pdf
SRC := $(wildcard $(SRC_DIR)/*.lisp)
GNP := $(wildcard $(GNUPLOT_DIR)/*.p)

CLSP:= clisp
GNPLT := gnuplot
ZTHR := zathura
GRFF := groff
GRFFFLAGS := -Tpdf

.PHONY: all clean

all: run-src compile-gnp run-report 

run-src: $(SRC)
	@echo "Running main.."
	@$(foreach file_name, $(SRC), $(CLSP) $(file_name);)

compile-gnp: $(GNP)
	@echo "Compile gnuplot files.."
	@$(GNPLT) $<

run-report: $(RPRT)
	@echo "Running report.."
	@$(ZTHR) $<	

$(RPRT): $(REPORT_DIR)/*.tr
	@echo "Building pdf.."
	@$(GRFF) $(GRFFFLAGS) $< > $@

clean: 
	@echo "Cleaning up.."
	@$(RM) $(RPRT)
