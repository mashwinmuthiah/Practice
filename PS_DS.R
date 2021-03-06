mean(state$Population,trim = 0.1)
mean(state$Population)
median(state$Population)
weighted.mean(state$Population)
View(state)
weighted.mean(state[["Murder.Rate"]],w=state[["Population"]])
weighted.mean(state$Murder.Rate,w=state$Population)
library(matrixStats)
weightedMedian(state$Murder.Rate,w=state$Population)
sd(state$Population)
ior(state$Population)
IQR(state$Population)
mad(state$Population)
quantile(state$Murder.Rate,p=c(.05,	.25,	.5,	.75,	.95))
boxplot((state$Population)/1000000,ylab="Populations(million)")
breaks <- seq(from=min(state[["Population"]]),to=max(state[["Population"]]), length=11)
pop_freq <- cut(state[["Population"]], breaks=breaks,right=TRUE, include.lowest = TRUE)
table(pop_freq)
hist(state[["Population"]], breaks=breaks)
hist(state$Murder.Rate,freq = FALSE)
lines(density(state$Murder.Rate),lwd=3)
lines(density(state[["Murder.Rate"]]), lwd=3, col="blue")
lines(density(state$Murder.Rate),lwd=3,col="red")
dfw<-read.csv("C:\\Users\\ashwi\\Desktop\\Ashwin\\PS_DS\\psds_data\\airline_delay_causes.csv")
barplot(as.matrix(dfw)/6, cex.axis=.5)
sp500_px <- read.csv('C:\\Users\\ashwi\\Desktop\\Ashwin\\PS_DS\\psds_data\\sp500_px.csv')
sp500_sym <- read.csv('C:\\Users\\ashwi\\Desktop\\Ashwin\\PS_DS\\psds_data\\sp500_sym.csv', stringsAsFactors = FALSE)
etfs <- sp500_px[row.names(sp500_px)>"2012-07-01",sp500_sym[sp500_sym$sector=="etf", 'symbol']]
install.packages("corrplot")
library(corrplot)
corrplot(cor(etfs), method = "ellipse")
x<-sp500_sym[sp500_sym$sector=="telecommunications_services", 'symbol']
x
telecom <- sp500_px[sp500_sym[sp500_sym$sector=="telecommunications_services", 'symbol']]
telecom
telecom <- telecom[row.names(telecom)>"2012-07-01", ]
telecom
telecom_cor <- cor(telecom)
telecom_cor
plot(telecom$T, telecom$VZ, xlab="T", ylab="VZ")
kc_tax <- read.csv('C:\\Users\\ashwi\\Desktop\\Ashwin\\PS_DS\\psds_data\\kc_tax.csv')
lc_loans <- read.csv('C:\\Users\\ashwi\\Desktop\\Ashwin\\PS_DS\\psds_data\\lc_loans.csv')
airline_stats <- read.csv('C:\\Users\\ashwi\\Desktop\\Ashwin\\PS_DS\\psds_data\\airline_stats.csv', stringsAsFactors = FALSE)
