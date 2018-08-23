# The dataset can be found in babynames package.

babynames <- babynames::babynames

byyear <- babynames %>% group_by(year, sex) %>% filter(n == max(n))

male <- byyear %>% filter(sex == "M")

female <- byyear %>% filter(sex == "F")

male_plot <- male %>% ggplot(aes(year, n)) + geom_bar(aes(color = name), stat = "identity")

female_plot <- female %>% ggplot(aes(year, n)) + geom_bar(aes(color = name), stat = "identity")