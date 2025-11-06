#load sample dataset
dataset <- iris

#8-% split for training data and 20% split for validation data

validation_index <-
createDataPartitioin(dataset$Species, p=0.80, list=FALSE)

validation <- dataset[-validation_index,]
dataset <- dataset[validation_index,]