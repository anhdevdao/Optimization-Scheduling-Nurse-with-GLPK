var x0, integer, >= 0;
var x1, integer, >= 0;
var x2, integer, >= 0;
var x3, integer, >= 0;
var x4, integer, >= 0;
var x5, integer, >= 0;
var x6, integer, >= 0;
var x7, integer, >= 0;
var x8, integer, >= 0;
var x9, integer, >= 0;
var x10, integer, >= 0;
var x11, integer, >= 0;
/* number of nurses start the work in t */


minimize obj: x0 + x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11;

s.t. c1: x0 + x1 + x3 + x4 >= 40;
s.t. c2: x1 + x2 + x4 + x5 >= 40;
s.t. c3: x2 + x3 + x5 + x6 >= 40;
s.t. c4: x3 + x4 + x6 + x7 >= 30;
s.t. c5: x4 + x5 + x7 + x8 >= 31;
s.t. c6: x5 + x6 + x8 + x9 >= 35;
s.t. c7: x6 + x7 + x9 + x10 >= 30;
s.t. c8: x7 + x8 + x10 + x11 >= 20;
s.t. c9: x8 + x9 + x11 + x0 >= 15;
s.t. c10: x9 + x10 + x0 + x1 >= 15;
s.t. c11: x10 + x11 + x1 + x2 >= 15;
s.t. c12: x11 + x0 + x2 + x3 >= 35;


solve;
display obj;
end;