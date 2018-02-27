library(stringi)
x<-stri_rand_strings(10, 6)
df.x<-data.frame(as.character(x))
df.x

progroups<-c("Finance", "HR", "IT", "Tech", "NULL", "Finance", "IT", "HR", "Finance", "Finance")
df.progroups<-data.frame(as.character(progroups))
df.progroups

country<-c("US","Canada","NULL","US", "US", "Mexico", "France","Colombia","US", "NULL")
df.country<-data.frame(as.character(country))
df.country

refdom<-c("yahoo","NULL","fb", "Twitter", "NULL", "#g45y6", "Yahoo","ggggggggg", "Website","Facebook")
df.refdom<-data.frame(as.character(refdom))
df.refdom

FinanceHits<-c("12","45", "89", "0", 'NULL',"20","21", "NULL", "NULL", "67")
PoliticsHits<-c("34","89","398","473", "2342", '90833',"57", "NULL","--", "7745")
NewsHits<-c("44","4982", "8749","4990","62804", "90023", "8933", "NULL", "9032","103270")
df.hits<-data.frame(FinanceHits, PoliticsHits, NewsHits)
df.hits

sample.df<-data.frame(df.x,df.progroups,df.country, df.refdom, df.hits)
sample.df

colnames(sample.df)[colnames(sample.df)=="as.character.x."] <- "visitorID"
colnames(sample.df)[colnames(sample.df)=="as.character.progroups."] <- "ProGroup"
colnames(sample.df)[colnames(sample.df)=="as.character.country."] <- "Country"
colnames(sample.df)[colnames(sample.df)=="as.character.refdom."] <- "ReferralDomain"
head(sample.df) 

write.csv(sample.df, "C:/Users/traveler/Desktop/tidysample.csv")



