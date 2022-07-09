.PHONY: all

all:
	jupyter nbconvert \
		--to slides \
		--TagRemovePreprocessor.remove_input_tags remove-input \
		--config slides_config.py \
		--stdout \
		bioframe-poster.ipynb \
		> dist/index.html
