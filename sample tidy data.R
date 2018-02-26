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

sample.df<-data.frame(df.x,df.progroups,df.country, df.refdom)
sample.df

colnames(sample.df)[colnames(sample.df)=="as.character.x."] <- "visitorID"
colnames(sample.df)[colnames(sample.df)=="as.character.progroups."] <- "ProGroup"
colnames(sample.df)[colnames(sample.df)=="as.character.country."] <- "Country"
colnames(sample.df)[colnames(sample.df)=="as.character.refdom."] <- "ReferralDomain"
head(sample.df)



