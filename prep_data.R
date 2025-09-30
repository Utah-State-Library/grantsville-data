library(tidyverse)
library(magrittr)

utpls <- readRDS(
  "C:/Users/samdutton/Desktop/Local Shiny Apps/PLS/data/pls_national.rds"
) %>%
  select(
    FSCSKEY,
    FISCAL_YEAR,
    CURRENT_LIBNAME,
    POPU_LSA,
    LIBRARIA,
    OTHPAID,
    TOTSTAFF,
    TOT_LIB_STAFF,
    VLNT,
    LOCGVT,
    STGVT,
    FEDGVT,
    OTHINCM,
    TOTINCM,
    STAFFEXP,
    PRMATEXP,
    ELMATEXP,
    OTHMATEX,
    TOTEXPCO,
    OTHOPEXP,
    TOTOPEXP,
    BKVOL,
    AUDIO_PH,
    VIDEO_PH,
    OTHMATS,
    ELECCOLL,
    TOTHOLD,
    TOTPHYS,
    GPTERMS,
    VISITS,
    REFERENC,
    REGBOR,
    PITUSR,
    KIDCIRCL,
    PHYSCIR,
    OTHPHCIR,
    TOTCIR,
    ELMATCIR,
    LOANFM,
    TOTPRO,
    K0_5PRO,
    K6_11PRO,
    YAPRO,
    ADULTPRO,
    GENPRO,
    K0_5ATTEN,
    K6_11ATTEN,
    YAATTEN,
    ADULTATTEN,
    GENATTEN,
    TOTATTEN,
    STABR,
    hide_lib
  ) %>%
  filter(
    STABR == "UT",
    hide_lib == 0,
    FISCAL_YEAR >= 2015,
    !str_detect(CURRENT_LIBNAME, "Bookmobile")
  ) %>%
  select(-hide_lib, -STABR)

saveRDS(utpls, "./utpls.RDS")
