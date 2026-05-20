# R Lab Codes - Complete Reference
## Extracted from R Lab Exam Notes (PDF)

---

## 📁 File Structure

All R files are organized by topic for easy reference:

### **00_quick_reference.R**
Quick reference guide with all important functions, common patterns, and error fixes.

### **01_basic_programming.R**
- Variables and Data Types
- Vectors (char, integer, numeric)
- Basic operations (mean, sum, sequences)
- User input and output

### **02_objects_in_r.R**
- Vectors
- Lists (mixed data types)
- Matrices (2D numeric)
- Arrays (3D)
- Factors (categorical)
- Data Frames (tables)

### **03_conditional_iterative.R**
- If-Else statements
- Leap year verification
- For loops
- While loops
- Factorial calculation
- Fibonacci series

### **04_data_transformation.R**
- dplyr library usage
- arrange() - Sort data
- select() - Choose columns
- filter() - Filter rows
- mutate() - Create new columns
- group_by() & summarize() - Aggregation

### **05a_statistics.R**
- mean(), median(), max(), min(), sum()
- Basic statistical functions

### **05b_string_functions.R**
- nchar() - String length
- toupper(), tolower()
- substr() - Extract substring
- grep() - Find pattern
- paste() - Concatenate strings

### **05c_date_functions.R**
- Sys.Date() - Current date
- Sys.time() - Current time
- as.Date() - Date conversion
- format() - Date formatting

### **06_graphics.R**
- plot() - Basic and line graphs
- Scatter plots
- Pie charts
- Bar plots

### **07_data_preprocessing.R**
- Handling missing values
- Removing duplicates
- Standardizing text
- Feature scaling/normalization

### **08_linear_regression.R**
- Simple linear regression
- Model creation with lm()
- Scatter plot visualization
- Regression line (abline)
- Prediction on new data
- Diagnostic plots

### **09_multiple_linear_regression.R**
- Multiple linear regression with 2+ variables
- Model summary and evaluation
- Actual vs Predicted visualization
- Diagnostic plots

### **17_arima_forecasting.R**
- Time series forecasting
- auto.arima() model
- forecast() predictions
- Time series plotting

### **18_anova_analysis.R**
- ANOVA (Analysis of Variance)
- Comparing multiple groups
- Summary output
- Boxplot visualization

---

## 🚀 How to Use

### Running Individual Files

1. Open RStudio or R console
2. Use `source("filename.R")` to run any file:
   ```r
   source("01_basic_programming.R")
   source("08_linear_regression.R")
   ```

### Installing Required Packages

Some files require libraries. Install once:

```r
install.packages("dplyr")
install.packages("tidyr")
install.packages("forecast")
install.packages("ggplot2")
```

Then they're ready to use with `library()`

### Interactive Scripts

Some scripts (like conditional statements) ask for user input. Remove or comment the `readline()` lines for non-interactive use:

```r
# Comment out:
# age <- readline(prompt = "Enter age: ")

# Or provide direct values:
age <- 25
```

---

## 🎯 Key Functions Reference

### Data Manipulation
| Function | Purpose |
|----------|---------|
| `c()` | Combine values |
| `data.frame()` | Create table |
| `matrix()` | Create matrix |
| `factor()` | Categorical data |

### Statistics
| Function | Purpose |
|----------|---------|
| `mean()` | Average |
| `median()` | Middle value |
| `sd()` | Standard deviation |
| `var()` | Variance |

### Transformation (dplyr)
| Function | Purpose |
|----------|---------|
| `filter()` | Choose rows |
| `select()` | Choose columns |
| `arrange()` | Sort data |
| `mutate()` | Create column |
| `summarize()` | Aggregate data |

### Visualization
| Function | Purpose |
|----------|---------|
| `plot()` | Basic graph |
| `barplot()` | Bar chart |
| `pie()` | Pie chart |
| `boxplot()` | Boxplot |

### Modeling
| Function | Purpose |
|----------|---------|
| `lm()` | Linear regression |
| `predict()` | Make predictions |
| `aov()` | ANOVA test |
| `auto.arima()` | ARIMA model |

---

## ⚠️ Common Issues & Solutions

### Issue: Library not found
```r
# Error: there is no package called 'dplyr'
# Solution:
install.packages("dplyr")
library(dplyr)
```

### Issue: File path error
```r
# WRONG:
read.csv("C:\Users\file.csv")

# RIGHT:
read.csv("C:/Users/file.csv")
# OR:
read.csv(file.choose())
```

### Issue: Missing values cause errors
```r
# WRONG:
mean(c(1, 2, NA, 4))  # Returns NA

# RIGHT:
mean(c(1, 2, NA, 4), na.rm = TRUE)  # Returns 2.33
```

### Issue: Pipe operator not working
```r
# Make sure dplyr is loaded:
library(dplyr)

# Then use %>%:
data %>% filter(Age > 25)
```

---

## 📚 Study Tips

1. **Start with Quick Reference** - Read `00_quick_reference.R` first
2. **Practice Sequentially** - Follow numbered files: 01 → 09, then 17-18
3. **Run Examples** - Execute each file and observe output
4. **Modify & Experiment** - Change values and see what happens
5. **Combine Concepts** - Mix multiple files' ideas for projects

---

## 🎓 Exam Preparation

### Focus Areas
- Basic programming (variables, vectors, operations)
- Data structures (dataframe, matrix, list)
- Control flow (if-else, loops)
- Data transformation (dplyr)
- Statistical analysis (mean, median, ANOVA)
- Visualization (plots, graphs)
- Regression (linear & multiple)
- Preprocessing (missing values, normalization)

### Common Lab Program Pattern
```r
# 1. Load libraries
# 2. Load/create data
# 3. Explore data
# 4. Transform/Analyze
# 5. Visualize
# 6. Print results
```

---

## 📞 Notes

- All files include comments explaining each step
- Most scripts include example data (no external files needed)
- Interactive scripts can be modified for batch use
- All code follows standard R conventions

---

**Created from:** R Lab Exam Explained Programs with Comments (PDF)
**Total Files:** 12 R scripts + 1 README
**Ready to use:** Yes, all code is executable and tested

Happy Learning! 📊📈
