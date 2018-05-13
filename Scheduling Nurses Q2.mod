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
/* number of nurses each period */

var o0, integer, >= 0;
var o1, integer, >= 0;
var o2, integer, >= 0;
var o3, integer, >= 0;
var o4, integer, >= 0;
var o5, integer, >= 0;
var o6, integer, >= 0;
var o7, integer, >= 0;
var o8, integer, >= 0;
var o9, integer, >= 0;
var o10, integer, >= 0;
var o11, integer, >= 0;
/* number of nurves work overtime each period */

minimize obj: o0 + o1 + o2 + o3 + o4 + o5 + o6 + o7 + o8 + o9 + o10 + o11;

s.t. c1: o0 <= x0;
s.t. c2: o1 <= x1;
s.t. c3: o2 <= x2;
s.t. c4: o3 <= x3;
s.t. c5: o4 <= x4;
s.t. c6: o5 <= x5;
s.t. c7: o6 <= x6;
s.t. c8: o7 <= x7;
s.t. c9: o8 <= x8;
s.t. c10: o9 <= x9;
s.t. c11: o10 <= x10;
s.t. c12: o11 <= x11;
s.t. c13: x0 + x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 <= 80;

s.t. c14: o11 + x0 + x1 + x3 + x4 >= 40;
s.t. c15: o0 + x1 + x2 + x4 + x5 >= 40;
s.t. c16: o1 + x2 + x3 + x5 + x6 >= 40;
s.t. c17: o2 + x3 + x4 + x6 + x7 >= 30;
s.t. c18: o3 + x4 + x5 + x7 + x8 >= 31;
s.t. c19: o4 + x5 + x6 + x8 + x9 >= 35;
s.t. c20: o5 + x6 + x7 + x9 + x10 >= 30;
s.t. c21: o6 + x7 + x8 + x10 + x11 >= 20;
s.t. c22: o7 + x8 + x9 + x11 + x0 >= 15;
s.t. c23: o8 + x9 + x10 + x0 + x1 >= 15;
s.t. c24: o9 + x10 + x11 + x1 + x2 >= 15;
s.t. c25: o10 + x11 + x0 + x2 + x3 >= 35;

solve;
display obj;
end;