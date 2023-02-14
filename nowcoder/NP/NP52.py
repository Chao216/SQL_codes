import sys

for line in sys.stdin:
    a = line.split()
    a = [int(i) for i in a]
    print(sum(a),round((sum(a)/len(a)),1))
    break