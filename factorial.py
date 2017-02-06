def factorial(n):
        if n<=1:
            return 1
        elif n<0:
            return "Please enter a nonnegative number"
        else:
            return factorial(n-1)*n


