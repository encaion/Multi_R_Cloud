#### 10. 색상의 이해와 조합 ####
#### __ [03] 고급 그래프 실습 ####
#### _____ ● 제품 및 브랜드 평가 ####
# http://rstudio-pubs-static.s3.amazonaws.com/225516_35d03c8e153242cba01b723f1e3bcfff.html
library("dplyr")
library("ggplot2")

df = read.csv("prods_scores.csv", stringsAsFactors = FALSE)
df[, "score_phrase"] = factor(df$score_phrase,
                              levels = c("Disaster", "Unbearable", "Painful", "Awful", "Bad",
                                         "Mediocre",
                                         "Okay", "Good", "Great", "Amazing", "Masterpiece"))

Microsoft = paste0("Xbox", c(" One", "", " 360"))
Sony = paste0("PlayStation", c(" Portable", " 4", " 2", " 3", " Vita", ""))
PC = c("Linux", "Macintosh", "SteamOS", "PC")
Nintendo = c(paste0("Nintendo ", c("3DS", 64, "64DD", "DS", "DSi")),
             "New Nintendo 3DS",
             paste0("Game Boy", c("", " Color", " Advance")),
             "Wii",
             "Wii U",
             "NES",
             "GameCube",
             "Super NES")

df[, "company"] = ifelse(df$platform %in% Microsoft, "Microsoft",
                         ifelse(df$platform %in% Sony, "Sony",
                                ifelse(df$platform %in% PC, "PC",
                                       ifelse(df$platform %in% Nintendo,
                                              "Nintendo", "Other"))))

my.palette = c("Sony"      = "#EDC951",
               "Nintendo"  = "#EB6841",
               "PC"        = "#CC2A36",
               "Microsoft" = "#4F372D",
               "Other"     = "#00A0B0")

ggplot(data = df,
       aes(x = score_phrase,
           y = company,
           color = company)) +
  # geom_point(size = 10, alpha = 0.1) +
  geom_jitter(alpha = 0.2) +
  scale_color_manual(values = my.palette) +
  labs(x = "Score category", y = NULL, title = "Reviews by Score categories") +
  theme_bw() +
  theme(legend.position = "none")
