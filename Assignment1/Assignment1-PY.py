
# coding: utf-8

# In[8]:

import pandas as pd
classData=pd.read_csv('C:/Users/Aashri/Downloads/ClassData.csv')
print(classData)


# In[18]:

import numpy
import statistics


# In[25]:

gpa=classData['GPA']
print(max(gpa))
print(min(gpa))
print(statistics.mean(gpa))
print(statistics.median(gpa))


# In[24]:

yearOfEx=classData['Years of work experience']
print(max(yearOfEx))
print(min(yearOfEx))
print(statistics.mean(yearOfEx))
print(statistics.median(yearOfEx))


# In[26]:

print(statistics.mode(classData['Latest salary (per year)']))


# In[38]:

countOfY=(classData['Coops/Internships (YN)'] == 'Y').sum()
percentY=countOfY*100/len(classData['Coops/Internships (YN)'])
print(percentY)


# In[39]:

countOfN=(classData['Coops/Internships (YN)'] == 'N').sum()
percentN=countOfN*100/len(classData['Coops/Internships (YN)'])
print(percentN)


# In[40]:

linkedInContacts=(classData['Number of contacts on Linkedin'] >500).sum()
print(linkedInContacts)


# In[43]:

q75, q25 = numpy.percentile(classData['Expected Salary after graduation'], [75 ,25])
iqr = q75 - q25
print(iqr)


# In[ ]:



