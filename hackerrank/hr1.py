x=input('')
n=int(x)
if (n%2==0):
    if(n>20):
        print('Not Weird')
    elif(n>=6):
        print('Weird')
    else:
        print('Not Weird')
else:
    print('Weird')
