
# Calc Speedup

calcData <- structure(list(S1= c(4.69,5.80,5.95,5.93), 
                       S10 = c(20.26,24.26,19.88,9.72), 
                       S30 = c(15.45,14.13,11.10,8.56), 
                       S100 = c(8.71,9.48,9.12,5.19)), 
                       .Names = c("1", "10", "30", "100"), class = "data.frame", row.names = c("72","144","288","576"))
attach(calcData)
print(calcData)

colours <- c("red", "blue", "yellow", "green")

barplot(as.matrix(calcData), main="Speedup of Calculator Codes on Spark to Sequential Codes", ylab = "Speedup Times", 
        cex.lab = 1.5, cex.main = 1.4, beside=TRUE, legend = TRUE, col=colours)

#Hist Speedup

histData <- structure(list(S1= c(52.04,81.31,104.08,113.13), 
                       S10 = c(24.09,15.96,11.17,8.14), 
                       S30 = c(6.00,5.76,6.35,2.46 ), 
                       S100 = c(2.89,2.95,0.56,0.61 )), 
                       .Names = c("1", "10", "30", "100"), class = "data.frame", row.names = c("72","144","288","576"))
attach(histData)
print(histData)

colours <- c("red", "blue", "yellow", "green")

barplot(as.matrix(histData), main="Speedup of Histogram Codes on Spark to Sequential Codes", ylab = "Speedup Times", 
        cex.lab = 1.5, cex.main = 1.4, beside=TRUE, legend = TRUE, col=colours)



#Hilbert Filter Speedup

htfData <- structure(list(S1= c(67.20,120.67,199.43,215.57 ), 
                       S10 = c(76.42,145.54,242.81,245.49 ), 
                       S30 = c(75.98,133.93,217.32,229.69 ), 
                       S100 = c(75.01,119.05,164.81,158.78 )), 
                       .Names = c("1", "10", "30", "100"), class = "data.frame", row.names = c("72","144","288","576"))
attach(htfData)
print(htfData)

colours <- c("red", "blue", "yellow", "green")

barplot(as.matrix(htfData), main="Speedup of Hilbert Filter Codes on Spark to Sequential Codes", ylab = "Speedup Times", 
        cex.lab = 1.5, cex.main = 1.4, beside=TRUE, legend = TRUE, col=colours)


#FFT Speedup

fftData <- structure(list(S1= c(133.49,235.77,264.04,161.90), 
                       S10 = c(3268.34,3603.01,3327.53,2362.54), 
                       S30 = c(60793.45,67307.03,49185.91,42175.90)), 
                       .Names = c("3x3x3", "9x9x9", "17x17x17"), class = "data.frame", row.names = c("72","144","288","576"))
attach(fftData)
print(fftData)

colours <- c("red", "blue", "yellow", "green")

barplot(as.matrix(fftData), main="Speedup of FFT Codes on Spark to Sequential Codes", ylab = "Speedup Times", 
        cex.lab = 1.5, cex.main = 1.4, beside=TRUE, legend = TRUE, log="y", col=colours)



#Jacobi Speedup

jacobiData <- structure(list(S1= c(258.90,187.80,185.85,160.04), 
                       S10 = c(511.16,705.35,876.09,900.30), 
                       S30 = c(1828.16,2267.85,2454.25,2388.80)), 
                       .Names = c("3x3x3", "9x9x9", "17x17x17"), class = "data.frame", row.names = c("72","144","288","576"))
attach(jacobiData)
print(jacobiData)

colours <- c("red", "blue", "yellow", "green")

barplot(as.matrix(jacobiData), main="Speedup of Jacobi Stencil Codes on Spark to Sequential Codes", ylab = "Speedup Times", 
        cex.lab = 1.5, cex.main = 1.4, beside=TRUE, legend = TRUE, log="y",col=colours)


