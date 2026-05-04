MAIN ?= kyotutest_anime
OUT_DIR ?= out
TEXMF_CACHE ?= $(OUT_DIR)/.texlive-cache

.PHONY: all pdf clean clean-intermediates mvtex clean-file

all: pdf

pdf: $(OUT_DIR)/$(MAIN).pdf

$(OUT_DIR)/$(MAIN).pdf: $(MAIN).tex
	@mkdir -p $(OUT_DIR) $(TEXMF_CACHE)
	TEXMFVAR=$(TEXMF_CACHE) TEXMFCACHE=$(TEXMF_CACHE) latexmk -lualatex -interaction=nonstopmode -halt-on-error -file-line-error -outdir=$(OUT_DIR) $(MAIN).tex
	@$(MAKE) --no-print-directory clean-intermediates MAIN=$(MAIN) OUT_DIR=$(OUT_DIR)

clean-intermediates:
	@rm -f \
		$(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).fls $(MAIN).fdb_latexmk $(MAIN).synctex.gz $(MAIN).pdf \
		$(OUT_DIR)/$(MAIN).aux $(OUT_DIR)/$(MAIN).log $(OUT_DIR)/$(MAIN).out \
		$(OUT_DIR)/$(MAIN).fls $(OUT_DIR)/$(MAIN).fdb_latexmk $(OUT_DIR)/$(MAIN).synctex.gz
	@rm -rf $(OUT_DIR)/.texlive-cache

clean:
	@$(MAKE) --no-print-directory clean-intermediates MAIN=$(MAIN) OUT_DIR=$(OUT_DIR)
	@rm -f $(OUT_DIR)/$(MAIN).pdf

mvtex:
	@echo "Moving all .tex files (except main.tex) to src/ directory..."
	@mkdir -p src
	@find . -maxdepth 1 -type f -name "*.tex" ! -name "main.tex" -exec mv -v {} src/ \;


ALLOWED_DIRS := input_images output_images
clean-file:
	@if [ -z "$(DIR)" ]; then \
		echo "❌ エラー: DIR 変数が指定されていません (例: make clear-folder DIR=output_images)"; \
		exit 1; \
	fi
	@if ! echo "$(ALLOWED_DIRS)" | grep -wq "$(DIR)"; then \
		echo "❌ エラー: '$(DIR)' は許可されていないフォルダ名です"; \
		echo "**許可されているフォルダ: $(ALLOWED_DIRS)"; \
		exit 1; \
	fi
	@echo "🧹 $(DIR)/ の中身を削除しています..."
	@rm -rf $(DIR)/*
	@echo "✅ 完了しました"
