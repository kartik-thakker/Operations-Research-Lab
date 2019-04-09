data load_bal;
input _id_ $ x1 x2 y _type_ $ _rhs_;
datalines;
objective 0 0 1 MAX .
obj1 -1 0 1 LE 0
obj2 0 -1 1 LE 0
milling_mc 4 3 0 LE 480
drill_press 3 5 0 LE 480
bal_con1 1 -2 0 LE 30
bal_con2 -1 2 0 LE 30
r1 1 0 0 GE 0
r2 0 1 0 GE 0
r3 0 0 1 GE 0
;

proc lp;
run;
proc lp;
RANGERHS data = load_bal;
RANGEPRICE data = load_bal;
