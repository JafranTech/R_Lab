# DATE FUNCTIONS IN R

today <- Sys.Date()

print(today)

now <- Sys.time()

print(now)

date1 <- as.Date("2026-05-01")
date2 <- as.Date("2026-05-19")

print(date2 - date1)

print(format(today,"%d-%m-%Y"))

print(format(today,"%Y"))

print(format(today,"%m"))

print(format(today,"%d"))
