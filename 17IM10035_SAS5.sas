proc optmodel;
var x{1..2} >= 0 integer;
max z = 100*x[1] + 150*x[2];
con c1 : 8*x[1] + 4*x[2] <= 40;
con c2 : 15*x[1] + 30*x[2] <= 200;
solve with milp;
print x z;
quit;
