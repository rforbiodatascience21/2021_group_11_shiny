# Clear workspace ---------------------------------------------------------
rm(list = ls())


# Load libraries ----------------------------------------------------------
library("tidyverse")
library("fs")
library("dplyr")
library("stringr")
library("forcats")
library("broom")
library("purrr")
library("cowplot")


# Define functions --------------------------------------------------------
source(file = "R/99_project_functions.R")


# Load data ---------------------------------------------------------------
gravier_x <- read_tsv(file = "data/01_gravier_x.tsv.gz")
gravier_y <- read_tsv(file = "data/01_gravier_y.tsv.gz")

# Wrangle data ------------------------------------------------------------
gravier_data <- gravier_x %>%
  mutate(outcome = unlist(select(gravier_y, value)))

# Write data --------------------------------------------------------------
write_tsv(x = gravier_data,
          file = "data/02_gravier_clean.tsv.gz")

