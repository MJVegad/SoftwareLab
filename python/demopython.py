#To use csv file functions
import csv
#To use commandline arguments
import sys
#To do pattern matching
import re

csvfile=sys.argv[1];
filedata=csv.reader(open(csvfile,'r'),delimiter=',',quotechar='"');

x=[]
y=[]
i=0
j=0

for k in filedata:
	if(str.isdigit(k[0])):
		x.insert(i,k)
		i+=1
	else:
		if(re.match("^Sno",k[0])):
			for p in k:
				y.insert(j,p)
				j+=1


#print len(x)
#print y

z={}
q=0
for i in y:
	z[i]=q
	q+=1

#print z

for col,index in z.iteritems():
	pass
#	print index,col	


#iterate through list using range
for i in range(len(x)):
	for j in range(len(x[i])):
		if(re.match("^NA",x[i][j])):
			x[i][j]=0
			


#print x

#use of else clause, break in loop to find prime number
for i in range(2,40):
	for j in range(2,i):
		if(i%j==0):
			#print i,' is a composite number.'
			break
	else:
		pass
		#print i,' is a prime number.'






#fibbonaci function
def fib(n):
	a,b=0,1
	while(a<n):
		print a
		a,b=b,a+b


#fibbonaci function which returns list of values

def fibb(n):
	r=[]
        a,b=0,1
        while(a<n):
                r.append(int(a))
                a,b=b,a+b
	return r
		



result=fibb(10)
#print result


r=['1','2','ab','b','\\']
p=re.compile('a')

f=[item for item in r if re.match('\d',item)]

#print f

 
f=open(sys.argv[1],'r')
fdata=csv.reader(f)

maindata=[row for row in fdata if re.match('\d',row[0])]
tot=len(maindata)
print tot


f=open(sys.argv[1],'r')
fdata=csv.reader(f)
sel=[int(row[6]) for row in fdata if re.match('1',row[len(row)-1])]
print sum(sel)

f=open(sys.argv[1],'r')
fdata=csv.reader(f)
sel=[row for row in fdata if re.match('1',row[len(row)-1])]
print len(sel)


f=open(sys.argv[1],'r')
fdata=csv.reader(f)
hed=[row for row in fdata if re.match('Sno',row[0])]

dic={}
for i,v in enumerate(hed[0]):
	dic[v]=i


print dic
	


for i in range(len(maindata)):
	for j in range(len(maindata[0])):
		if(re.match('NA',maindata[i][j])):
			maindata[i][j]=0


def tom(i):
	mar=0
	for k in range(len(i)):
		if(k!=0):
			mar+=float(i[k])
	i.append(mar)
	return i



h=map(tom,maindata)

print len(h[0])

h.sort(key=lambda x:x[7])

print h




	
	

