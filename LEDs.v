module LEDs(
  input a,b,c,d,e,f,
  output wire [3:0] leds
);
wire [7:0] data;
//NOT
not not0(a1,a);
not not1(b1,b);
not not2(c1,c);
not not3(d1,d);
not not4(e1,e);
not not5(f1,f);
//LED1
and and0(data[0],d1,e,f1);
and and1(data[1],a1,b,c1);
or or0(leds[0],data[0],data[1]);
//LED3
and and2(data[2],a1,b1,c1);
and and3(data[3],d1,e1,f1);
or or1(leds[1],data[2],data[3]);
//LED4
and and4(data[4],d,e,f);
and and5(data[5],a,b,c);
or or2(leds[2],data[4],data[5]);
//LED6
and and6(data[6],d,e1,f);
and and7(data[7],a,b1,c);
or or3(leds[3],data[6],data[7]);
endmodule 