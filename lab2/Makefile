SRC_DIR := src
GNUPLOT_DIR := plots/gnuplot_files
REPORT_DIR := report

RPRT := $(REPORT_DIR)/report.pdf
SRC := $(wildcard $(SRC_DIR)/*.sh)
GNP := $(wildcard $(GNUPLOT_DIR)/*.p)

B := bash
GNPLT := gnuplot
TPST := typst compile

.PHONY: all clean

all: run-src compile-gnp run-report 

run-src: $(SRC)
	@echo "Running main.."
	@$(B) $<

compile-gnp: $(GNP)
	@echo "Compile gnuplot files.."
	@$(GNPLT) $<

run-report: $(RPRT)
	@echo "Running report.."
	@zathura $<	

$(RPRT): $(REPORT_DIR)/*.typ
	@echo "Building pdf.."
	$(TPST) $<

clean: 
	@echo "Cleaning up.."
	@$(RM) $(RPRT)
