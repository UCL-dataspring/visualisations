#load packages

library(lubridate)
library(dplyr, warn.conflicts = FALSE)
library(tidyr, warn.conflicts = FALSE)
library(ggplot2)
library(dplyr)

#read data from csv

prints <- read.csv("002322267.csv")
prints2 <- filter(prints, BOOK_REF=="002322267_2")

#plot data

ggplot(prints2, aes(x = PAGE_NO, y = IMAGE_SIZE, group = BOOK_REF)) +
	geom_point(aes(), size = 4) +
	geom_line() +	
	ylim(0, 100) +
	ggtitle("Illustration area by page for BL book ID 002322267 (v2)")

#save data to file

ggsave("002322267_2.png", width = 7, height = 7)
