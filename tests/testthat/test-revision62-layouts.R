test_that('new trailing HRU and landuse fields are retained by formatters', {
  hru <- getFromNamespace('hru_to_string', 'SWATfarmR')
  lum <- getFromNamespace('lum_to_string', 'SWATfarmR')
  expect_match(hru(c('1','name',paste0('v',1:10))), 'v10', fixed = TRUE)
  expect_match(lum(c('land',paste0('v',1:15))), 'v15', fixed = TRUE)
})

test_that('linewise input reader retains fields beyond a known schema', {
  file <- tempfile()
  writeLines(c('title', 'id name old extra', '1 row 2 future'), file)
  read <- getFromNamespace('read_table_linewise', 'SWATfarmR')
  x <- read(file, 'get', c('d','c','d'), 2)
  expect_named(x, c('id','name','old','extra'))
  expect_identical(x$extra, 'future')
})
