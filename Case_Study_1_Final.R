### Case Study 1 ----

Grad_Data <- read.csv("Grad_Data.csv")

graduated <- subset(Grad_Data, Target == "Graduate")
dropout <- subset(Grad_Data, Target == "Dropout")
enrolled <- subset(Grad_Data, Target == 'Enrolled')

### Histograms for all Variables ----

hist(graduated$Marital.status)
hist(dropout$Marital.status)

hist(graduated$Application.mode)
hist(dropout$Application.mode)

hist(graduated$Application.order)
hist(dropout$Application.order)

hist(graduated$Course)
hist(dropout$Course)

hist(graduated$Daytime.evening.attendance)
hist(dropout$Daytime.evening.attendance)

hist(graduated$Previous.qualification)
hist(dropout$Previous.qualification)

hist(graduated$Nacionality)
hist(dropout$Nacionality)

hist(graduated$Mother.s.qualification)
hist(dropout$Mother.s.qualification)

hist(graduated$Father.s.qualification)
hist(dropout$Father.s.qualification)

hist(graduated$Mother.s.occupation)
hist(dropout$Mother.s.occupation)

hist(graduated$Father.s.occupation)
hist(dropout$Father.s.occupation)

hist(graduated$Displaced)
hist(dropout$Displaced)

hist(graduated$Educational.special.needs)
hist(dropout$Educational.special.needs)

hist(graduated$Debtor)
hist(dropout$Debtor)

hist(graduated$Tuition.fees.up.to.date)
hist(dropout$Tuition.fees.up.to.date)

hist(graduated$Gender)
hist(dropout$Gender)

hist(graduated$Scholarship.holder)
hist(dropout$Scholarship.holder)

hist(graduated$Age.at.enrollment)
hist(dropout$Age.at.enrollment)

hist(graduated$International)
hist(dropout$International)

hist(graduated$Unemployment.rate)
hist(dropout$Unemployment.rate)

hist(graduated$Inflation.rate)
hist(dropout$Inflation.rate)

hist(graduated$GDP)
hist(dropout$GDP)


### Pie Chat of Gender, Enrollment Status ----

# Gender Pie Chart for Graduated Students

male_grad <- subset(graduated$Gender, graduated$Gender == 1)
female_grad <- subset(graduated$Gender, graduated$Gender == 0)

graduated_gender <- c(men = (548/4424), female = (1661/4424))

pie(graduated_gender, labels = c("Men", "Women"), main = "Graduates by Gender")


# Gender Pie Chart for Enrolled Students

male_enrolled <- subset(enrolled$Gender, enrolled$Gender == 1)
female_enrolled <- subset(enrolled$Gender, enrolled$Gender == 0)

enrolled_gender <- c(men = (307/4424) , female = (487/4424))

pie(enrolled_gender, labels = c("Men", "Women"), main = "Enrolled by Gender")


# Gender Pie Chart for Dropout Students

male_dropout <- subset(dropout$Gender, dropout$Gender == 1)
female_dropout <- subset(dropout$Gender, dropout$Gender == 0)

dropout_gender <- c(men = (701/4424), female = (720/4424))

pie(dropout_gender, labels = c("Men", "Women"), main = "Dropouts by Gender")



### Heat Map of Data Set ----
Grad_Data_numerical <- subset(Grad_Data, select = -c(Target))

Grad_Data_matrix <- as.matrix(Grad_Data_numerical)

heatmap(Grad_Data_matrix, Rowv = NA, Colv = NA, xlab = NULL)
