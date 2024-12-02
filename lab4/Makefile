SRC_DIR := src

SRC := $(wildcard $(SRC_DIR)/*.hs)

GHC := runghc
GHCFLAGS := -Wall -fforce-recomp

PNDC := pandoc
ZTHR := zathura

.PHONY: all

all: run

run: $(SRC)
	@echo "Running.."
	@$(GHC) $(GHCFLAGS) $<
