# process the data to cbdq format

ff <- dir("data/", full.names=TRUE)

out <- ""

for(fff in ff){
  rl <- readLines(fff)

  rl <- gsub("\"", "\\\\\"", rl)
  txt <- paste(rl, collapse="\", \"")
  out <- paste0(out, "\"", txt, "\", ")
}


cat("\n\n")
cat(out)
cat("\n\n")
