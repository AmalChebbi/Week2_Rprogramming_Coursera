pollutantmean<-function(directory,pollutant,id=1:332){
  fileList<-list.files(path=directory, pattern=".csv",full.names=TRUE)
  values<-numeric()# an empty vector
  for(i in id){
    data<-read.csv(fileList[i])
    values<-c(values,data[[pollutant]])
  }
  mean(values,na.rm=TRUE)
}
pollutantmean("~/coursera/coursera/R_programming/rprog_data_specdata/specdata","sulfate")

