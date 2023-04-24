1. Copy in the missing file, `sum_function.R`, to our docker image by adding `COPY sum_function.R /sum_function.R`.
2. `sum_function.R` is incorrectly adding `x + x` instead of `x + y`.
3. Add a better unit test `expect_equal(sum_function(1, 3), 4)`
4. Run tests in docker build `RUN Rscript /test_sum_function.R`