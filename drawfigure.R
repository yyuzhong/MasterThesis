
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
                       .Names = c("1 line", "10 lines", "30 lines", "100 lines"), 
                       class = "data.frame", row.names = c("72 cores","144 cores","288 cores","576 cores"))
attach(histData)
print(histData)

colours <- c("red", "blue", "yellow", "green")

barplot(as.matrix(histData), xlab = "Split size", ylab = "Speedup Times", 
        cex.lab = 1.5, cex.main = 1.4, beside=TRUE, legend = TRUE, col=1, lwd=1:2, angle=c(45, 135), density=seq(5,35,10))



#Hilbert Filter Speedup

htfData <- structure(list(S1= c(67.20,120.67,199.43,215.57 ), 
                       S10 = c(76.42,145.54,242.81,245.49 ), 
                       S30 = c(75.98,133.93,217.32,229.69 ), 
                       S100 = c(75.01,119.05,164.81,158.78 )), 
                       .Names = c("1 line", "10 lines", "30 lines", "100 lines"), 
                       class = "data.frame", row.names = c("72 cores","144 cores","288 cores","576 cores"))
attach(htfData)
print(htfData)

colours <- c("red", "blue", "yellow", "green")

barplot(as.matrix(htfData), xlab = "Split size",ylab = "Speedup Times", 
        cex.lab = 1.5, cex.main = 1.4, beside=TRUE, legend = TRUE, col=1, lwd=1:2, angle=c(45, 135), density=seq(5,35,10),
       args.legend = list(x = 20, y=300, bty = "n"))


#FFT Speedup

fftData <- structure(list(S1= c(68.10,121.83,146.84,148.93), 
                       S10 = c(73.57,163.72,249.03,241.43)), 
                       .Names = c("3x3x3", "9x9x9"), 
                       class = "data.frame", row.names = c("72 cores","144 cores","288 cores","576 cores"))
attach(fftData)
print(fftData)

colours <- c("red", "blue", "yellow", "green")

barplot(as.matrix(fftData), xlab = "Subvolume size", ylab = "Speedup Times",
        cex.lab = 1.5, cex.main = 1.4, beside=TRUE, legend = TRUE, args.legend = list(x = 4, y=280, bty = "n"),
        col=1, lwd=1:2, angle=c(45, 135), density=seq(5,35,10))


#Jacobi Speedup


jacobiData <- structure(list(S1  = c(4.32,  3.13,  3.10,  2.67), 
                             S10 = c(8.52,  11.76, 14.60, 15.01 ), 
                             S30 = c(30.47, 37.80, 40.90, 39.81 )), 
                       .Names = c("Broadcast Var.", "Cassandra DB", "Boundary RDD"), 
                       class = "data.frame", row.names = c("72 cores","144 cores","288 cores","576 cores"))
attach(jacobiData)
print(jacobiData)

colours <- c("red", "blue", "yellow", "green")

barplot(as.matrix(jacobiData),xlab = "Exchange Boundary Data", ylab = "Speedup Times",
        cex.lab = 1.5, cex.main = 1.4, beside=TRUE, legend = TRUE, args.legend = list(x = 4, y=46, bty = "n"),
        col=1, lwd=1:2, angle=c(45, 135), density=seq(5,35,10))
