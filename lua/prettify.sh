#!/bin/sh

# @author Daisuke Homma

INDENT_TYPE=Spaces
INDENT_WIDTH=2
QUOTE_STYLE=AutoPreferSingle
CALL_PARENTHESES=None

stylua -v ${PWD}/$@ \
--indent-type ${INDENT_TYPE} \
--indent-width ${INDENT_WIDTH} \
--quote-style ${QUOTE_STYLE} \
--call-parentheses ${CALL_PARENTHESES}
