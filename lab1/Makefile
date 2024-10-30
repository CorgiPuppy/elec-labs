SRC_DIR := src
GNUPLOT_DIR := plots/gnuplot_files
REPORT_DIR := report

RPRT := $(REPORT_DIR)/report.pdf
SRC := $(wildcard $(SRC_DIR)/*.lua)
GNP := $(wildcard $(GNUPLOT_DIR)/*.p)

L := lua
GNPLT := gnuplot
PDFLTX := pdflatex

OUTPUT := --output-directory

.PHONY: all

all: clean run-src compile-gnp run-report clean-aux

run-src: $(SRC)
	@echo "Running main.."
	@$(L) $<

compile-gnp: $(GNP)
	@echo "Compile gnuplot files.."
	@$(GNPLT) $<

run-report: $(RPRT)
	@echo "Running report.."
	@zathura $<	

$(RPRT): $(REPORT_DIR)/*.tex
	@echo "Building pdf.."
	$(PDFLTX) $(OUTPUT)=$(REPORT_DIR) $<
	$(PDFLTX) $(OUTPUT)=$(REPORT_DIR) $<

clean-aux:
	@echo "Cleaning up auxiliary files.."
	@find $(REPORT_DIR) -type f ! -name '*.pdf' ! -name '*.tex' -delete	

clean: 
	@echo "Cleaning up.."
	@$(RM) $(RPRT)
