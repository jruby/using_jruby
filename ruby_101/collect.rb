primes     = [1, 3, 5, 'seven']
composites = [2, 4, 6, 9, 10]
misc       = [0]

# Oops.  We should store 7 as a prime.  Let's fix that:
primes[3] = 7

numbers = {:primes => primes, :composites => misc}

# Oops.  We gave the wrong list for composites.  Let's fix that:
numbers[:composites] = composites
