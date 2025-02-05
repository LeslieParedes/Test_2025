#Homework 3 Regular expressions
# 1.removing the spaces in the next lines:
First String    Second      1.22      3.4
Second          More Text   1.555555  2.2220
Third           x           3         124
#Look for the spaces find [ \t]{2,} and replace: ,
First String,Second,1.22,3.4
Second,More Text,1.555555,2.2220
Third,x,3,124
