#!/bin/bash

# Rscript --vanilla -e "fisher.test(matrix(c(228,284,863,851),nrow=2))"

# DAVID documentation
# PT = 30,000 (human genome background)
# PH = 40 (p53 pathway genes)
# LT = 300 (input genes)
# LH = 3 (hit genes)

# Fisher exact p-value
# = 0.007443
Rscript --vanilla -e "fisher.test(matrix(c(3,297,37,29663),nrow=2))"

# EASE score (a modified Fisher exact p-value)
# = 0.06027
Rscript --vanilla -e "fisher.test(matrix(c(3-1,297,37+1,29663),nrow=2))"
