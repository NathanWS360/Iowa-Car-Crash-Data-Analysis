# Running z-test on the full dataset:
full <- prop.test(197132, 810629, 2/7, "less", correct = FALSE)
# Z-test for property damage only:
prop_dam <- prop.test(139771, 585835, 2/7, "less", correct = FALSE)
# Z-test for minor injuries:
minor_injury <- prop.test(19819, 73304, 2/7, "less", correct = FALSE)
# Z-test for major injuries:
major_injury <- prop.test(5778, 18458, 2/7, "greater", correct = FALSE)
# Z-test for fatal crashes:
fatal <- prop.test(1551, 4783, 2/7, "greater", correct = FALSE)
# Z-test for unknown severity:
unknown <- prop.test(30213, 128249, 2/7, "less", correct = FALSE)

# Printing results:
full
# p < 2.2e^-16

prop_dam
# p < 2.2e^-16

minor_injury
# p < 2.2e^-16

major_injury
# p < 2.2e^-16

fatal
# p = 1.784e^(-9)

unknown
# p < 2.2e^-16