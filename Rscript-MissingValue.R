df <- data.frame(sex = c("M","F",NA,"M","F"), score = c(5,4,3,4,NA))
df
is.na(df)
table(is.na(df))

table(is.na(df$sex))
table(is.na(df$score))

mean(df$score)
sum(df$score)
libray(dplyr)
df %>% filter(is.na(score))
df_nomiss <- df %>% filter(!is.na(score))

mean(df_nomiss$score)
sum(df_nomiss$socre)

de_nomiss <- df %>% filter(!is.na(score) & !is.na(sex))
df_nomiss

df_nomiss2 <- na.omit(df)
df_nomiss2

mean(df$score,na.rm = T)
sum(df$score,na.rm = T)