lista <- c(1, 2, 2, 2, 3, 3, 3, 3, 4, 4, 5) # cria uma lista e armazena na variável

hist(lista) # plota um histograma 

?hist # traz a documentação da função

mean(lista)

median(lista)

shapiro.test(lista)
	
summary(lista)

mode <- function(x) {
        ux <- unique(x)
        ux[which.max(tabulate(match(x, ux)))]
}

boxplot(lista)

png(file="/Users/rcrub/OneDrive/Cursos/Alura/R/boxplot.png", width=700, height=700)
boxplot(lista)
dev.off()

var(lista) # variância
sd(lista) # desvio padrão

nums <- read.csv(file="/Users/rcrub/OneDrive/Cursos/Alura/R/tabela.txt")
nums$odd

lizard = c(6, 11, 10, 6, 6, 10, 8, 8, 6, 9, 8, 8, 6, 6, 9, 6, 7, 11, 10, 9) # essa distribuição é normal?
t.test(lizard)
t.test(lizard, conf.level=0.9)

media <- mean(lizard)
hist(lizard)
abline(v=media, col="blue", lwd=2)
abline(v=7.3, col="red", lwd=4)
abline(v=8.7, col="red", lwd=4)