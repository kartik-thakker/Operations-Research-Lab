data product_mix;
input _id_ $ x1 x2 _type_ $ _rhs_;
datalines;
objective 100 150 MAX .
c1 8 4 LE 40
c2 15 30 LE 200
c3 0 0 int .
c4 25 25 upperbd .
;

proc lp;
run;
