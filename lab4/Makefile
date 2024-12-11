SRC_DIR := src
GNUPLOT_DIR := plots/gnuplot_files
REPORT_DIR := report

RPRT_SRC := $(REPORT_DIR)/report.pdf
HTML_SRC := $(REPORT_DIR)/report.html
SLIM_SRC := $(wildcard $(REPORT_DIR)/*.slim)

SRC := $(wildcard $(SRC_DIR)/*.rb)
GNP := $(wildcard $(GNUPLOT_DIR)/*.p)

RB := ruby
SRB := slimrb
SRBFLAGS := -p
WEP := weasyprint
ZTHR := zathura
GNPLT := gnuplot

.PHONY: all clean

all: run-src compile-gnp run-report clean-html

run-src: $(SRC)
	@echo "Running.."
	@$(RB) $<

compile-gnp:
	@echo "Compile gnuplot files.."
	@$(foreach file_name, $(GNP), $(GNPLT) $(file_name);)

run-report: $(RPRT_SRC)
	@echo "Running a report.."
	@$(ZTHR) $<

$(RPRT_SRC): $(HTML_SRC)
	@echo "Building pdf.."
	@$(WEP) $< $@

$(HTML_SRC): $(SLIM_SRC)
	@echo "Building html.."
	@$(SRB) $(SRBFLAGS) $< > $@

clean-html:
	@echo "Cleaning html.."
	@$(RM) $(HTML_SRC)

clean:
	@echo "Cleaning a report.."
	$(RM) $(RPRT_SRC)
