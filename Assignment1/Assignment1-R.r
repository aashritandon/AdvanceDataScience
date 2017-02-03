
classData=read.csv("C:/Users/Aashri/Downloads/ClassData.csv")

# Min, Max, Median, Avg for GPA
max(classData$GPA)
min(classData$GPA)
mean(classData$GPA)
median(classData$GPA)

# Min, Max, Median, Avg for YearofWorkExp
max(classData$Years.of.work.experience)
min(classData$Years.of.work.experience)
mean(classData$Years.of.work.experience)
median(classData$Years.of.work.experience)

# mode of the Salary
mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

result=mode(classData$Latest.salary..per.year.)
result

# % of students having Co/op
countOfY=length(classData$Coops.Internships..YN.[classData$Coops.Internships..YN. == "Y"])
percentY=countOfY*100/length(classData$Coops.Internships..YN.)
percentY

# % of students not having Co/op
countOfN=length(classData$Coops.Internships..YN.[classData$Coops.Internships..YN. == "N"])
percentN=countOfN*100/length(classData$Coops.Internships..YN.)
percentN

#No of students with more than 500 LinkedIn contacts
countOfStudents=length(classData$Coops.Internships..YN.[classData$Number.of.contacts.on.Linkedin > 500])
countOfStudents

#inter quartile range
inQr=IQR(classData$Expected.Salary.after.graduation)
inQr


