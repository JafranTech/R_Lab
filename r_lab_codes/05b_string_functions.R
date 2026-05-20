# =====================================================
# 5b. STRING FUNCTIONS IN R
# =====================================================

text <- "R Programming"

print(nchar(text))
print(toupper(text))
print(tolower(text))
print(substr(text, 3, 8))
print(grep("Programming", text))
print(paste("Hello", "World"))
