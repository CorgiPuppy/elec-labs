SRC_DIR := src
GNUPLOT_DIR := plots/gnuplot_files
REPORT_DIR := report

RPRT_SRC := $(REPORT_DIR)/report.pdf
HTML_SRC := $(REPORT_DIR)/report.html

SRC := $(wildcard $(SRC_DIR)/*.go)
GNP := $(wildcard $(GNUPLOT_DIR)/*.p)

GO := go run

WEP := weasyprint
ZTHR := zathura
GNPLT := gnuplot

.PHONY: all

all: clean run-src compile-gnp run-report

run-src: $(SRC)
	@echo "Running.."
	@$(GO) $<

compile-gnp:
	@echo "Compile gnuplot files.."
	@$(foreach file_name, $(GNP), $(GNPLT) $(file_name);)

run-report: $(RPRT_SRC)
	@echo "Running a report.."
	@$(ZTHR) $<

$(RPRT_SRC): $(HTML_SRC)
	@echo "Building pdf.."
	@$(WEP) $< $@

clean:
	@echo "Cleaning a report.."
	$(RM) $(RPRT_SRC)
