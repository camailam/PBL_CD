module transferencia_bits_perfil1(
	input a,b,c,d,
	output wire [2:0] transbitsperfil1
);
wire[8:0] data;
not not0(a1,a);
not not1(b1,a);
not not3(c1,c);
not not4(d1,d);
//primeira saida
and and0(data[0],a,b1,d);
and and1(data[1],a,c1,d);
or or0(transbitsperfil1[0],data[0],data[1]);
//segunda saida
and and2(data[2],a1,b,d);
and and3(data[3],b,c1,d);
or or1(transbitsperfil1[1],data[2],data[3]);
//terceira saida
and and4(data[4],a1,c,d);
and and5(data[5],b1,c,d);
or or2(transbitsperfil1[2],data[4],data[5]);
endmodule 	
//passa os bits do perfil da interface 2 caso ele seja válido ou 000