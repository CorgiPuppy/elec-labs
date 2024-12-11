SRC_DIR := src
REPORT_DIR := report

RPRT_SRC := $(REPORT_DIR)/report.pdf
HTML_SRC := $(REPORT_DIR)/report.html
SLIM_SRC := $(wildcard $(REPORT_DIR)/*.slim)

SRC := $(wildcard $(SRC_DIR)/*.rb)

RB := ruby

SRB := slimrb
SRBFLAGS := -p
WEP := weasyprint
ZTHR := zathura

.PHONY: all

all: run run-report clean-html

run: $(SRC)
	@echo "Running.."
	@$(RB) $<

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
