module qual_interface1(
	input a,b,c,
	output qualinterface1
);
wire [1:0] data;
not not0(a1,a);
not not1(b1,b);
not not2(c1,c);
and and0(data[0],a1,b1,c);
and and1(data[1],a,b,c1);
or or0(qualinterface1,data[0],data[1]);
endmodule 
//verifica se os bits da função da interface 2 devem ir para os LEDS ou matriz