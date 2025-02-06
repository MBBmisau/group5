student <- list(
    name = " Fatima Muhammad Auwal",
    email = "fatimamuhammadauwal7295",
    phone = "08167247295",
    area_of_interest = "Proteomics"
)

for (key in names(student)) {
    cat(paste0(toupper(substring(key, 1, 1)), substring(key, 2), ": ", student[[key]], "\n"))
}
