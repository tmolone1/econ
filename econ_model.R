library(tidyverse)
actors<-seq(1:112)
actors_df<-tibble(actors)
actors_df$skills<-rnorm(112, mean=20, sd=6)
businesses<-c("R","D","F")
bus_df<-tibble(businesses)

total_skill<-sum(actors_df$skills)
total_needprod<-sum(bus_df$needprod)
products<-c("alpha","beta","delta","gamma")
actors_df$want_alpha<-rnorm(112, mean=14, sd=9)
actors_df$want_beta<-rnorm(112, mean=26, sd=14)
actors_df$want_delta<-rnorm(112, mean=3, sd=1)
actors_df$want_gamma<-rlnorm(112, meanlog=0, sdlog=1)
demand_alpha<-sum(actors_df$want_alpha)
demand_beta<-sum(actors_df$want_beta)
demand_delta<-sum(actors_df$want_delta)
demand_gamma<-sum(actors_df$want_gamma)
actors_df$skill_alpha<-runif(112, 5, 35)
actors_df$skill_beta<-rlnorm(112, meanlog=2, sdlog=1)
actors_df$skill_delta<-rnorm(112, mean=2, sd=2)
actors_df$skill_gamma<-rnorm(112, mean=4, sd=1)
prod_df<-tibble(products)
prod_df$demand<-NA
prod_df$demand[1]<-demand_alpha
prod_df$demand[2]<-demand_beta
prod_df$demand[3]<-demand_delta
prod_df$demand[4]<-demand_gamma
prod_df$price<-rep(5,nrow(prod_df))
actors_df$money<-rep(500,nrow(actors_df))
bus_df$cash<-rep(5000,nrow(bus_df))
bus_df$have_alpha<-rep(0,(length(businesses)))
bus_df$have_beta<-rep(0,(length(businesses)))
bus_df$have_delta<-rep(0,(length(businesses)))
bus_df$have_gamma<-rep(0,(length(businesses)))
bus_df$ceo<-sample(1:112,length(businesses),replace=FALSE)

bus_df$employees<-list(NA)
bus_df[1,]$employees<-list(bus_df$ceo[1])
bus_df[2,]$employees<-list(bus_df$ceo[2])
bus_df[3,]$employees<-list(bus_df$ceo[3])


bus_df$sal<-rep(50,nrow(bus_df))


i=1
bus_df[1,1+max.col(actors_df[as.numeric(bus_df[1,]$employees),7:10])]<-max(actors_df[as.numeric(bus_df[1,]$employees),7:10])
bus_df[1,]
actors_df[as.numeric(bus_df[1,]$employees),]$money<-actors_df[as.numeric(bus_df[1,]$employees),]$money+bus_df[1,]$sal
actors_df[56,]



max(actors_df[as.numeric(bus_df[1,]$employees),7:10])
max.col(actors_df[as.numeric(bus_df[1,]$employees),7:10])

max(actors_df[as.numeric(bus_df[2,]$employees),7:10])
max.col(actors_df[as.numeric(bus_df[2,]$employees),7:10])

max(actors_df[as.numeric(bus_df[3,]$employees),7:10])
max.col(actors_df[as.numeric(bus_df[3,]$employees),7:10])


