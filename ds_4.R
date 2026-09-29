setwd("~/ds4")
getwd()
b <- read.csv("C:\\Users\\asus\\Documents\\ds4\\data\\regions_clean.csv")
library(readr)
r <- read.csv("data\\regions_clean.csv")

class(b$region)
readLines("data\\regions_ru.csv")
naive<-read.csv("data\\regions_ru.csv")
dim(naive)

ok <- readr::read_delim(
  "data/regions_ru.csv",
  delim = ";",
  skip = 3,
  locale = readr::locale(encoding = "CP1251", decimal_mark = ","),
  show_col_types = FALSE)
dim(ok)
names(ok)
unname(sapply(ok, class))
ok[[2]]

#Homework 1.1
raw_line<-readLines("data\\regions_ru.csv",n=5)[5]
Encoding(raw_line)
head(as.integer(charToRaw(raw_line)),6)
first_region<-as.character(ok[[1]])[1]
Encoding(first_region)
nchar(first_region)
nchar(first_region, type = "bytes")
names(ok) <- c("region", "grp_pc", "employment")
names(ok)

library(readxl)
excel_sheets("data\\regions.xlsx")
x<-read_excel("data\\regions.xlsx",sheet="regions")
dim(x)
names(x)
library(haven)
s<-read_dta("data\\firms.dta")
#Homework 1.3.
s <- read_dta("data/firms.dta")

labelled_cols <- names(s)[vapply(s, haven::is.labelled, logical(1))]
labelled_cols
s[labelled_cols] <- lapply(s[labelled_cols], haven::as_factor)
sapply(s[labelled_cols], class)
class(s$sector)
attr(s$sector,"labels")
table(as_factor(s$sector))
mean(as.numeric(s$sector))
library(jsonlite)
j<-fromJSON("data\\indicators.json")
names(j)
class(j$series)
head(j$series, 3)
p <- readRDS("data\\panel.rds")
dim(p)

#Homework 1.4.
dim(ok)
names(ok)
str(ok)
head(ok)
summary(ok)

dim(x)
names(x)
str(x)
head(x)
summary(x)

dim(s)
names(s)
str(s)
head(s)
summary(s)
