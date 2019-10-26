elementos <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld", "vic",
            "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt", "wa", "vic",
            "qld", "nsw", "nsw", "wa", "sa", "act", "nsw", "vic", "vic", "act")

Factorcompilado <- factor(elementos)
levels(Factorcompilado)

eventos <- c(60, 49, 40, 61, 64, 60, 59, 54, 62, 69, 70, 42, 56,
              61, 61, 61, 58, 51, 48, 65, 49, 49, 41, 48, 52, 46,
              59, 46, 58, 43)

Mediacasos <- tapply(eventos, Factorcompilado, mean)
Mediacasos

StdErr <- function(x) sqrt(var(x)/length(x))
Granresumen <- tapply(eventos, Factorcompilado, StdErr)
Granresumen

library("MASS")
print(str(Cars93))

car.data <- data.frame(Cars93$AirBags, Cars93$Type)
car.data = table(Cars93$AirBags, Cars93$Type) 
print(car.data)
print(chisq.test(car.data))


data(InsectSprays)
aov.spray <- aov(sqrt(count) ~spray, data = InsectSprays)
aov.spray <- aov(sqrt(InsectSprays$count) ~InsectSprays$spray)
aov.spray <- aov(sqrt(InsectSprays[, 1])   ~InsectSprays[, 2])



