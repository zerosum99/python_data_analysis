
install.packages("neuralnet")
install.packages("nnet")
install.packages("e1071")
install.packages("caret")


library(neuralnet)
library(nnet)
library(e1071)
library(caret)


setwd("D:")

data<-read.csv("importdata.csv")

set.seed(1234)
partition <- sample(seq(1, 2), size = nrow(data), replace = TRUE, prob = c(0.7, 0.3))
train <- data[partition == 1,]
test <- data[partition == 2,]

nn_tr<- nnet(output~x3+x5+x9+x10+x13+x16+x20+x21+x24, data=train, size =7, abstol=0.1, maxit=1000, reltol =1.0e-8)

pred_train<-predict(nn_tr,train,type=("class"))
confusionMatrix(pred_train,train$output)

pred_te<-predict(nn_tr,test,type=("class"))
confusionMatrix(pred_te,test$output)



install.packages("NeuralNetTools")

library(NeuralNetTools)

neuralweights(nn_tr)

olden(nn_tr)

plotnet(nn_tr)


