PACKAGE_NAME=fonts-junicode

.PHONY: all
.PHONY: doc

all:
	:

doc: doc-fonts-junicode-ja.pdf

doc-fonts-junicode-ja.pdf: doc-$(PACKAGE_NAME)-ja.saty satysfi-$(PACKAGE_NAME).opam fonts.satysfi-hash Satyristes
	opam pin add satysfi-$(PACKAGE_NAME).opam "file://$(PWD)" -y --verbose
	satyrographos opam build --name $(PACKAGE_NAME)-doc
