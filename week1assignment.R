# R course for beginners
# Week 1
# assignment by Shai Nimrodi 318516465

participant_id = seq(1, 6, 1)

gender = c('male', 'female', 'female', 'female', 'male', 'male')

age = c(15, 20, 25, 32, 36, 40)

depression = c(1, 0, 0, 1, 1, 0)

df_participants = data.frame(participant_id, gender, age, depression)
print(df)

View(df)

library(dplyr)

df_participants |>
  summarize(
    mean_age = mean(age),
    num_female = sum(gender == "female"),
    num_male = sum(gender == "male")
  )

library(ggplot2)

ggplot(df, aes(x = gender, y = age))+
  geom_point()

write.csv(df, file = '~/Desktop/R course/Week 1- Intro/df.csv')



