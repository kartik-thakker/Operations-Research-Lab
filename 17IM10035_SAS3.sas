data ad;
input _id_ $ x1 x2 x3 x4 _type_ $ _rhs_;
datalines;
objective 400000 900000 500000 200000 MAX .
ad_budget 40 75 30 15 LE 800
fe_cust 300 400 200 100 GE 2000
tele_ad 40 75 0 0 LE 500
ran1 1 0 0 0 GE 3
ran2 0 1 0 0 GE 2
ran31 0 0 1 0 GE 5
ran32 0 0 1 0 LE 10
ran41 0 0 0 1 GE 5
ran42 0 0 0 1 LE 10
;

proc lp;
run;
