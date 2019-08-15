setwd("U:\\Python\\Books\\Practical_Data_Science_Cookbook\\Ch2-Driving_Visual_Analysis_with_Automobile_Data_with_R")
vehicles <- read.csv("vehicles.csv", stringsAsFactors = F)
labels <- do.call(rbind, strsplit(readLines("varlabels.txt"), " - "))

print(paste('Num rows:', nrow(vehicles)))
print(paste('Num columns:', ncol(vehicles)))
#print(paste('Columns:', names(vehicles)))
print(paste('Num years:', length(unique(vehicles[, 'year']))))
print(paste('Num years (#2):', length(unique(vehicles$year))))

first_year <- min(vehicles[, 'year'])
last_year <- max(vehicles[, 'year'])
print(paste('First year:', first_year))
print(paste('Last year:', last_year))

table(vehicles$fuelType1)
vehicles$trany[vehicles$trany == ''] <- NA
vehicles$trany2 <- ifelse(substr(vehicles$trany, 1, 4) == 'Auto', 'Auto', 'Manual')
vehicles$trany <- as.factor(vehicles$trany)
table(vehicles$trany2)