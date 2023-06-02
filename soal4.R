library("ggpubr")
# a. 
cat("a. \n\n")
data <- read.csv("C:\\Users\\abika\\Downloads\\GTL.csv")


data$Temp <- factor(data$Temp,
                       levels = c(100, 125, 150),
                       labels = c("T100", "T125", "T150"))

data$Glass <- factor(data$Glass,
                    levels = c("A", "B", "C"),
                    labels = c("GA", "GB", "GC"))


table(data$Glass, data$Temp)

interaction.plot(x.factor = data$Temp, trace.factor =
                    data$Glass,
                  response = data$Light, fun = mean,
                  type = "b", legend = TRUE,
                  xlab = "Temp", ylab="Light",
                  pch=c(1,19), col = c("#00AFBB", "#E7B800"))

# b. 
cat("b.\n")
res.aov2 <- aov(Light ~ Temp + Glass, data = data)
summary <- summary(res.aov2)
print(summary)

cat("\ndidapat nilai p  temp adalah 1.96e-10 (signifikan)\ndan nilai p glass adalah 0.0109 (signifikan)")
cat("\n\n")

#c
cat("c.\n")
result <- aggregate(Light ~ Glass + Temp, data = data, FUN = function(x) c(mean = mean(x), sd = sd(x)))
print(result)




