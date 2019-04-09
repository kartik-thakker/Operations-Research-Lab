data product_mix;
input _id_ $ x1 x2 _type_ $ _rhs;
datalines;
objective 34 40 MAX .
assemby_time 4 6 LE 48
special_component 2 2 LE 18
space_blue 2 1 LE 16
;

proc lp;
run;
proc lp;
print RANGERHS data = product_mix;
print RANGEPRICE data = product_mix;
