module validade_perfil(
	input wire a,b,c,
	output wire l
);
wire b_and_c, a_and_c, a_and_b_and_c;
not not0(b1,b);
and and0(b_and_c,b1,c);
not not1(a1, a);
and and1(a_and_c, a1,c);
not not2(c1,c);
and and2(a_and_b_and_c, a,b,c1);
or or0(l,b_and_c, a_and_c, a_and_b_and_c);
endmodule  
//verifica se o perfil na interface 1 é válido