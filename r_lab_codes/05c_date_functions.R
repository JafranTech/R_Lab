# =====================================================
# 5c. DATE FUNCTIONS IN R
# =====================================================

# Current date
today <- Sys.Date()
print(today)

# Current time
now <- Sys.time()
print(now)

# Custom dates
date1 <- as.Date("2026-05-01")
date2 <- as.Date("2026-05-19")

# Difference between dates
print(date2 - date1)

# Formatting date
print(format(today, "%d-%m-%Y"))
print(format(today, "%Y"))
print(format(today, "%m"))
print(format(today, "%d"))
