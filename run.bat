set port=8000
start http://localhost:%port% 
title ��� - %port%
mkdocs serve -a localhost:%port%
