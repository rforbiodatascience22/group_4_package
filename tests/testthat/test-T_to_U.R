test_that("all T's are U's", {
  expect_match(T_to_U("ATCGTCTAG"), "AUCGUCUAG")
})
