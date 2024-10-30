SRC_DIR := src
BIN_DIR := bin

EXE := $(BIN_DIR)/main
SRC := $(wildcard $(SRC_DIR)/*.f90)

OSTYPE := $(shell uname)
GF=gfortran
LF=lfortran

.PHONY: all

all: run clean

run: $(EXE)
	@echo "Running.."
	@./$<

$(EXE): $(SRC_DIR)/*.f90 | $(BIN_DIR)
	@echo "Building.."
	@if [ $(strip $(OSTYPE)) = Linux ]; then\
		$(GF) $^ -o $@;\
	fi

$(BIN_DIR):
	@echo "Create bin dir.."
	@mkdir -p $@
	
clean:
	@echo "Cleaning up.."
	@$(RM) -rf $(BIN_DIR)
