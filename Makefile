.PHONY: all

all:
	jupyter nbconvert \
		--to slides \
		--TagRemovePreprocessor.remove_input_tags remove-input \
		--TemplateExporter.extra_template_basedirs ./ \
		--template reveal_template \
		--stdout \
		bioframe-poster.ipynb \
		> dist/index.html
