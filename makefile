# makefile to generate README.md for the guessing game project

README.md: guessinggame.sh
	@echo "# Guessing Game Project" > README.md
	@echo "\n**Date and Time:** $$(date)" >> README.md
	@echo "\n**Lines of Code in guessinggame.sh:** $$(wc -l < guessinggame.sh)" >> README.md
