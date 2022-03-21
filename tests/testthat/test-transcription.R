test_that("all T's are U's", {
  expect_match(transcription("ATCGTCTAG"), "AUCGUCUAG")
})
