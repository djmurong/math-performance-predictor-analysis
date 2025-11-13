# ============================================
# Exploratory Data Analysis (EDA)
# Student Performance - Math Dataset
# ============================================

# --- 0. Load packages ----
library(tidyverse)
library(GGally)
library(naniar)
library(janitor)
library(skimr)
library(car)

# --- 1. Load data ----
df <- read_delim("data/raw/student-mat.csv", delim = ";") %>%
  clean_names()

# --- 2. Basic overview ----
cat("Number of rows:", nrow(df), "\n")
cat("Number of columns:", ncol(df), "\n")
glimpse(df)
skim(df)   # quick data summary

# --- 3. Check missing values ----
vis_miss(df)  # visualize missingness
colSums(is.na(df))

# --- 4. Inspect variable types ----
df <- df %>%
  mutate(across(where(is.character), as.factor))  # convert all char to factor

# --- 5. Outcome variable overview ----
summary(df$g3)
ggplot(df, aes(x = g3)) +
  geom_histogram(binwidth = 1, fill = "steelblue", color = "white") +
  labs(title = "Distribution of Final Math Grades (G3)",
       x = "Final Grade", y = "Count")

# --- 6. Demographic variables ----
# Summary
df %>%
  select(sex, age, address, famsize, pstatus, medu, fedu) %>%
  summary()

# Visuals
ggplot(df, aes(x = sex)) + geom_bar(fill = "orange") + labs(title = "Sex distribution")
ggplot(df, aes(x = age)) + geom_histogram(binwidth = 1, fill = "skyblue") +
  labs(title = "Age distribution")

ggplot(df, aes(x = medu)) + geom_bar(fill = "lightgreen") +
  labs(title = "Mother's Education Level")

# --- 7. Study habits and support variables ----
ggplot(df, aes(x = studytime)) + geom_bar(fill = "plum") +
  labs(title = "Weekly Study Time (1 = <2h, 4 = >10h)")

ggplot(df, aes(x = traveltime)) + geom_bar(fill = "tomato") +
  labs(title = "Travel Time to School")

ggplot(df, aes(x = absences)) +
  geom_histogram(binwidth = 1, fill = "steelblue") +
  labs(title = "Number of School Absences")

# --- 8. Support and activity variables ----
support_vars <- c("schoolsup", "famsup", "paid", "activities", "internet", "higher")
df %>%
  select(all_of(support_vars)) %>%
  pivot_longer(everything()) %>%
  ggplot(aes(x = name, fill = value)) +
  geom_bar(position = "fill") +
  labs(title = "Distribution of Support and Activities", y = "Proportion") +
  coord_flip()

# --- 9. Relationships: categorical vs G3 ----
ggplot(df, aes(x = sex, y = g3)) + geom_boxplot(fill = "skyblue") +
  labs(title = "Final Grades by Sex")

ggplot(df, aes(x = schoolsup, y = g3)) + geom_boxplot(fill = "salmon") +
  labs(title = "Final Grades by School Support")

ggplot(df, aes(x = address, y = g3)) + geom_boxplot(fill = "lightgreen") +
  labs(title = "Final Grades by Urban/Rural Address")

# --- 10. Relationships: numerical vs G3 ----
ggplot(df, aes(x = age, y = g3)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Age vs Final Grade")

ggplot(df, aes(x = studytime, y = g3)) +
  geom_jitter(width = 0.2, alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE, color = "darkblue") +
  labs(title = "Study Time vs Final Grade")

ggplot(df, aes(x = absences, y = g3)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE, color = "darkred") +
  labs(title = "Absences vs Final Grade")

# --- 11. Correlation among numeric variables ----
num_vars <- df %>% select_if(is.numeric)
GGally::ggcorr(num_vars, label = TRUE, label_size = 3, hjust = 1, layout.exp = 1)

# --- 12. Group comparisons (stats tests) ----
# Compare grades by sex
t_test_result <- t.test(g3 ~ sex, data = df)
print(t_test_result)

# ANOVA: Study time categories
anova_result <- aov(g3 ~ studytime, data = df)
summary(anova_result)

# --- 13. Summary tables ----
df %>%
  group_by(studytime) %>%
  summarise(mean_grade = mean(g3),
            sd_grade = sd(g3),
            n = n())

df %>%
  group_by(schoolsup) %>%
  summarise(mean_grade = mean(g3))

# --- 14. Save cleaned version ----
saveRDS(df, "data/processed/student_mat_cleaned.rds")

# --- 15. Optional: Initial takeaways ----
cat("\nInitial Insights:\n")
cat("- Grades (G3) are roughly normal but slightly skewed low.\n")
cat("- Study time and school support appear positively associated with performance.\n")
cat("- Absences show a negative correlation with grades.\n")
cat("- Demographic differences (sex, address) exist but appear smaller.\n")